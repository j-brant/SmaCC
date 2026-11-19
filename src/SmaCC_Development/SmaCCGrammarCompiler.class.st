Class {
	#name : 'SmaCCGrammarCompiler',
	#superclass : 'Object',
	#instVars : [
		'shiftTable',
		'itemSets',
		'startingStateMap',
		'actions',
		'parserDefinitionString',
		'scannerCompiler',
		'grammar',
		'codeGenerator',
		'reduceTable'
	],
	#classVars : [
		'OptimizeTransitionTable'
	],
	#category : 'SmaCC_Development-Compiler',
	#package : 'SmaCC_Development',
	#tag : 'Compiler'
}

{ #category : 'accessing' }
SmaCCGrammarCompiler class >> optimizeTransitionTable [
	^ OptimizeTransitionTable ifNil: [ true ]
]

{ #category : 'accessing' }
SmaCCGrammarCompiler class >> optimizeTransitionTable: aBoolean [
	OptimizeTransitionTable := aBoolean
]

{ #category : 'accessing' }
SmaCCGrammarCompiler class >> toggleOptimizeTransitionTable [
	self optimizeTransitionTable: self optimizeTransitionTable not
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> actionForState: anInteger on: aSmaCCSymbol [
	| action |
	action := (itemSets at: anInteger)
		action: aSmaCCSymbol
		prefer: (grammar preferredActionFor: aSmaCCSymbol).
	^ self idForAction: action state: anInteger on: aSmaCCSymbol
]

{ #category : 'initialize-release' }
SmaCCGrammarCompiler >> buildDefinition: definitionString [
	| parser tree |
	scannerCompiler grammar: self grammar.
	parserDefinitionString := definitionString.
	parser := SmaCCDefinitionParser on: (ReadStream on: definitionString).
	parser scanner parseSourceSelector: self codeGenerator parseSourceSelector.
	tree := parser parse.
	tree completeSource: definitionString.
	SmaCCGrammarCreator buildGrammar: grammar from: tree.
	grammar finishBuilding
]

{ #category : 'private' }
SmaCCGrammarCompiler >> checkForEmptySymbols [
	grammar emptySymbols isEmpty ifTrue: [ ^ self ].
	^ SmaCCCompilationNotification new
		messageText: 'Missing non-terminal productions';
		issue: (SmaCCMissingSymbolsIssue new missing: grammar emptySymbols);
		signal
]

{ #category : 'private' }
SmaCCGrammarCompiler >> checkForUnusedSymbols [
	grammar unusedSymbols isEmpty ifTrue: [ ^ self ].
	SmaCCCompilationNotification new
		messageText: 'Unused non-terminal symbols';
		issue: (SmaCCUnusedSymbolsIssue new unused: grammar unusedSymbols);
		signal
]

{ #category : 'accessing' }
SmaCCGrammarCompiler >> codeGenerator [
	^ codeGenerator
		ifNil: [ self codeGenerator: SmaCCSmalltalkCodeGenerator new ]
]

{ #category : 'initialize-release' }
SmaCCGrammarCompiler >> codeGenerator: aSmaCCCodeGenerator [
	codeGenerator := aSmaCCCodeGenerator.
	self grammar codeGenerator: aSmaCCCodeGenerator.
	scannerCompiler codeGenerator: aSmaCCCodeGenerator.
	^ codeGenerator
]

{ #category : 'compiling' }
SmaCCGrammarCompiler >> compileInto: sClass andParser: pClass [
	self scannerClass: sClass.
	self parserClass: pClass.
	self createChanges.
	self codeGenerator compileChanges
]

{ #category : 'compiling' }
SmaCCGrammarCompiler >> compileNodeClasses [
	SmaCCNodeCalculation compileForGrammar: grammar
]

{ #category : 'compiling' }
SmaCCGrammarCompiler >> compileParser [
	self compileNodeClasses.
	self codeGenerator
		startingParserCompilation;
		compileTransitionTable: self transitionTable;
		compileAmbiguousTransitions;
		compileStartingStateIds: startingStateMap;
		compileReductionTable: self reduceTable;
		compileReductionActions;
		compileScannerClassIntoParser;
		compileSymbolNames;
		compileCacheId
]

{ #category : 'compiling' }
SmaCCGrammarCompiler >> compileScanner [
	scannerCompiler compileScanner
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> compressTable: table [
	^ table collect: [ :row | self compressTableRow: row ]
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> compressTableRow: row [
	| uniqueItems |
	uniqueItems := self uniqueNonErrorActionsForTableRow: row.
	^ uniqueItems size = 1
		ifTrue: [ self
				singleActionTableRow: row
				forAction: uniqueItems first ]
		ifFalse: [ self multipleActionTableRow: row ]
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> compressedRowStream [
	^ WriteStream with: Array new
]

{ #category : 'compiling' }
SmaCCGrammarCompiler >> createChanges [
	self codeGenerator removeOldMethods.
	self checkForEmptySymbols.
	self checkForUnusedSymbols.
	self compileScanner.
	self compileParser.
	self codeGenerator compileDefinitionComment: parserDefinitionString
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> createItemSets [
	| stateIndicesByHash index symbols |
	startingStateMap := Dictionary new.
	grammar calculateFirstSets.
	itemSets := OrderedCollection new.
	stateIndicesByHash := Dictionary new.
	grammar allStartingSymbols
		do: [ :each | 
			| initialState |
			initialState := grammar initialItemSetFor: each.
			itemSets add: initialState.
			startingStateMap at: each put: itemSets size.
			(stateIndicesByHash
				at: initialState hash
				ifAbsentPut: [ OrderedCollection new ]) add: itemSets size ].
	shiftTable := Dictionary new.
	symbols := grammar symbols.
	index := 1.
	[ index <= itemSets size ]
		whileTrue: [ (itemSets at: index)
				movesOn: symbols
				do: [ :symbol :destination | 
					shiftTable
						at: (self shiftTableKeyForIndex: index symbol: symbol)
						put: (self indexOfState: destination withIndicesByHash: stateIndicesByHash) ].
			index := index + 1 ]
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> createTransitionTable [
	| symbols table optimizedTable |
	symbols := scannerCompiler symbols.
	table := (1 to: itemSets size)
			collect: [ :index | self transitionRowForState: index on: symbols ].
	optimizedTable := self class optimizeTransitionTable
			ifTrue: [ self optimizeTransitionTable: table ]
			ifFalse: [ table ].
	actions := self compressTable: optimizedTable
]

{ #category : 'accessing' }
SmaCCGrammarCompiler >> grammar [
	^ grammar isNil
		ifTrue: [ grammar := SmaCCGrammar new ]
		ifFalse: [ grammar ]
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> idForAction: aSmaCCAction state: anInteger on: aSmaCCSymbol [
	| index preferredAction newStateIndex |
	(aSmaCCAction isAmbiguous and: [ grammar isGLR ])
		ifTrue:
			[ index := codeGenerator
				ambiguousTableEntryFor:
					(aSmaCCAction actions
						collect:
							[ :each | self idForAction: each state: anInteger on: aSmaCCSymbol ])
						asSet asSortedCollection.
			^ (index bitShift: 2) + 3 ]
		ifFalse:
			[ preferredAction := aSmaCCAction preferredAction.
			preferredAction isShift
				ifTrue:
					[ newStateIndex := shiftTable
						at: (self shiftTableKeyForIndex: anInteger symbol: aSmaCCSymbol).
					^ (newStateIndex bitShift: 2) + preferredAction id ].
			preferredAction isReduce
				ifTrue:
					[ ^ ((self reduceTableIndexFor: preferredAction) bitShift: 2)
						+ preferredAction id ].
			^ aSmaCCAction id ]
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> indexOfState: newState [
	| newStateIndex |
	newStateIndex := itemSets indexOf: newState.
	newStateIndex = 0
		ifTrue: [ itemSets add: newState.
			newStateIndex := itemSets size ]
		ifFalse: [ (itemSets at: newStateIndex) mergeWith: newState ].
	^ newStateIndex
]

{ #category : 'private' }
SmaCCGrammarCompiler >> indexOfState: newState withIndicesByHash: stateIndicesByHash [
	| candidates index |
	candidates := stateIndicesByHash
			at: newState hash
			ifAbsentPut: [ OrderedCollection new ].
	index := candidates
			detect: [ :each | (itemSets at: each) = newState ]
			ifNone: [ itemSets add: newState.
				candidates add: itemSets size.
				^ itemSets size ].
	(itemSets at: index) mergeWith: newState.
	^ index
]

{ #category : 'initialize-release' }
SmaCCGrammarCompiler >> initialize [
	super initialize.
	scannerCompiler := SmaCCScannerCompiler new.
	startingStateMap := Dictionary new.
	reduceTable := OrderedDictionary new
]

{ #category : 'accessing' }
SmaCCGrammarCompiler >> itemSetsComment [
	| stream |
	stream := WriteStream on: String new.
	itemSets
		keysAndValuesDo:
			[ :index :each | 
			stream
				nextPutAll: index printString;
				nextPutAll: each printString;
				cr ].
	^ stream contents
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> multipleActionTableRow: row [
	| stream |
	stream := self compressedRowStream.
	stream nextPut: 1.
	row
		keysAndValuesDo:
			[ :index :each | 
			each ~= 3
				ifTrue:
					[ self writeInteger: each on: stream.
					self writeInteger: index on: stream ] ].
	^ stream contents
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> optimizeTransitionTable: anArray [
	| shortcutIndices |
	shortcutIndices := Dictionary new.
	^ anArray
		collect: [ :row | 
			row
				collect: [ :action | 
					(action bitAnd: 2r11) = SmaCCShiftAction id
						ifTrue: [ (self
								optimizedShiftFrom: row
								to: (action bitShift: -2)
								inTable: anArray
								cache: shortcutIndices) ifNil: [ action ] ]
						ifFalse: [ action ] ] ]
]

{ #category : 'private' }
SmaCCGrammarCompiler >> optimizedShiftFrom: row to: stateIndex inTable: table cache: shortcutIndices [
	| symbolIndex otherAction |
	symbolIndex := shortcutIndices
			at: stateIndex
			ifAbsentPut: [ self shortcutSymbolIndexForRow: (table at: stateIndex) ].
	symbolIndex isNil ifTrue: [ ^ nil ].
	otherAction := row at: symbolIndex.
	^ (self
		optimizedShiftFrom: row
		to: (otherAction bitShift: -2)
		inTable: table
		cache: shortcutIndices) ifNil: [ otherAction ]
]

{ #category : 'accessing' }
SmaCCGrammarCompiler >> parserClass [
	^ self codeGenerator parserClass
]

{ #category : 'accessing' }
SmaCCGrammarCompiler >> parserClass: aClassOrString [
	grammar isGLR
		ifTrue: [ self codeGenerator
				glrParserClass: aClassOrString
				isIncremental: grammar isIncremental ]
		ifFalse: [ self codeGenerator parserClass: aClassOrString ]
]

{ #category : 'reduction table' }
SmaCCGrammarCompiler >> reduceTable [
	^ reduceTable keys
]

{ #category : 'reduction table' }
SmaCCGrammarCompiler >> reduceTableIndexFor: aSmaCCReduceAction [
	| value |
	value := {scannerCompiler symbols indexOf: aSmaCCReduceAction symbol.
			aSmaCCReduceAction rhs size.
			self codeGenerator compileSourceFor: aSmaCCReduceAction.
			aSmaCCReduceAction rhs ruleNumber.
			aSmaCCReduceAction rhs reduceCode isImmediate}.
	^ reduceTable at: value ifAbsentPut: [ reduceTable size + 1 ]
]

{ #category : 'accessing' }
SmaCCGrammarCompiler >> scannerClass: aClassOrString [
	self codeGenerator scannerClass: aClassOrString
]

{ #category : 'accessing' }
SmaCCGrammarCompiler >> scannerCompiler [
	^ scannerCompiler
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> shiftTableKeyForIndex: anInteger symbol: aSmaCCSymbol [
	^ SmaCCSymbolTableIndex forIndex: anInteger symbol: aSmaCCSymbol
]

{ #category : 'private' }
SmaCCGrammarCompiler >> shortcutSymbolIndexForRow: row [
	| actions action reduceEntry |
	actions := self uniqueNonErrorActionsForTableRow: row.
	actions size = 1 ifFalse: [ ^ nil ].
	action := actions first.
	(action bitAnd: 2r11) = SmaCCReduceAction id ifFalse: [ ^ nil ].
	reduceEntry := reduceTable keyAtIndex: (action bitShift: -2).
	((reduceEntry at: 3) = (codeGenerator methodNameFor: #liftFirstValue:)
		and: [ (reduceEntry at: 2) = 1 ]) ifFalse: [ ^ nil ].
	^ reduceEntry first
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> singleActionTableRow: row forAction: anInteger [
	| stream |
	stream := self compressedRowStream.
	stream nextPut: 0.
	self writeInteger: anInteger on: stream.
	row
		keysAndValuesDo:
			[ :index :each | 
			each ~= 3
				ifTrue: [ self writeInteger: index on: stream ] ].
	^ stream contents
]

{ #category : 'accessing' }
SmaCCGrammarCompiler >> symbolsComment [
	| stream |
	stream := WriteStream on: String new.
	scannerCompiler symbols
		keysAndValuesDo:
			[ :index :each | 
			stream
				nextPutAll: index printString;
				nextPutAll: '. ';
				nextPutAll: each printString;
				cr ].
	^ stream contents
]

{ #category : 'private' }
SmaCCGrammarCompiler >> transitionRowForState: stateIndex on: symbols [
	| itemSet contributors |
	itemSet := itemSets at: stateIndex.
	contributors := itemSet actionContributorsBySymbol.
	^ symbols
		collect: [ :symbol | 
			contributors
				at: symbol
				ifPresent: [ :items | 
					| action |
					action := itemSet
							action: symbol
							prefer: (grammar preferredActionFor: symbol)
							from: items.
					self
						idForAction: action
						state: stateIndex
						on: symbol ]
				ifAbsent: [ SmaCCRejectAction id ] ]
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> transitionTable [
	actions isNil
		ifTrue: [ self createItemSets.
			self createTransitionTable ].
	^ actions
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> uniqueNonErrorActionsForTableRow: row [
	^ row asSet
		remove: 3 ifAbsent: [  ];
		asArray
]

{ #category : 'action table' }
SmaCCGrammarCompiler >> writeInteger: anInteger on: aStream [
	aStream nextPut: anInteger
]
