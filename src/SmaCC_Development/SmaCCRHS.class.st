Class {
	#name : #SmaCCRHS,
	#superclass : #SmaCCGrammarItem,
	#instVars : [
		'collection',
		'variableNameMap',
		'nodeClassDefinition',
		'productionSymbol',
		'reduceCode'
	],
	#category : #'SmaCC_Development-Model'
}

{ #category : #comparing }
SmaCCRHS >> = aSmaCCRHS [
	^ self class = aSmaCCRHS class
		and: [ collection = aSmaCCRHS collection ]
]

{ #category : #accessing }
SmaCCRHS >> add: aSmaCCSymbol [
	collection add: aSmaCCSymbol
]

{ #category : #private }
SmaCCRHS >> annotateTokenVariables: aBlock [
	collection
		keysAndValuesDo:
			[ :i :each | 
			(each isTerminal and: [ (self variableNameForIndex: i) isNil ])
				ifTrue:
					[ (aBlock value: each unsafeMethodName)
						ifNotNil:
							[ :value | 
							(variableNameMap at: value ifAbsentPut: [ OrderedCollection new ])
								add: i ] ] ]
]

{ #category : #accessing }
SmaCCRHS >> at: anInteger [
	^ collection at: anInteger
]

{ #category : #private }
SmaCCRHS >> basicModelTypesForVariable: aString into: productionTypes seen: aSet [
	(self symbolsForVariableName: aString)
		do:
			[ :symbol | 
			symbol returnsSingleVariable
				ifTrue:
					[ productionTypes
						addAll: (symbol modelTypesForVariable: symbol variableName) ]
				ifFalse: [ productionTypes addAll: symbol modelTypes ] ].
	self
		unnamedSymbolsDo:
			[ :each | 
			(each hasVariableNamed: aString)
				ifTrue:
					[ productionTypes
						addAll: (each modelTypesForVariable: aString seen: aSet) ] ]
]

{ #category : #private }
SmaCCRHS >> collection [
	^ collection
]

{ #category : #'reduce actions' }
SmaCCRHS >> componentIndex [
	collection
		keysAndValuesDo:
			[ :index :each | 
			((self variableNameForIndex: index) isNil
				and: [ each isSubtypeOf: self ])
				ifTrue: [ ^ index ] ].
	^ 0
]

{ #category : #accessing }
SmaCCRHS >> do: aBlock [
	collection do: aBlock
]

{ #category : #private }
SmaCCRHS >> firstTerminals [
	| items |
	collection isEmpty
		ifTrue: [ ^ Set with: self grammar emptySymbol ].
	items := Set new.
	1 to: collection size do:
		[ :index | 
		items addAll: (collection at: index) firstTerminals.
		(items includes: self grammar emptySymbol)
			ifTrue:
				[ index < collection size
					ifTrue: [ items remove: self grammar emptySymbol ] ]
			ifFalse: [ ^ items ] ].
	^ items
]

{ #category : #'reduce actions' }
SmaCCRHS >> generateNamedVariableCollectionWarningFor: problemIndex [
	SmaCCCompilationNotification new
		messageText: 'Node creation';
		tagBlock: [ String
				streamContents: [ :stream | 
					stream
						nextPutAll: 'Non terminal symbol that returns a variable collection is assigned to a variable. The non terminal should be changed to return an AST node:';
						cr;
						cr;
						nextPutAll: self productionSymbol name;
						nextPutAll: ' : '.
					1
						to: self size
						do: [ :i | 
							i == problemIndex ifTrue: [ stream nextPutAll: '>>>' ].
							stream nextPutAll: (self at: i) name.
							i == problemIndex ifTrue: [ stream nextPutAll: '<<<' ].
							stream space ] ] ];
		signal
]

{ #category : #'reduce actions' }
SmaCCRHS >> generateUnnamedSymbolWarningFor: problemIndex [
	(self grammar ignoredVariableWarnings includes: (self at: problemIndex) name)
		ifTrue: [ ^ self ].
	SmaCCCompilationNotification new
		messageText: 'Node creation';
		tagBlock: [ String
				streamContents: [ :stream | 
					stream
						nextPutAll: 'Unnamed symbol in production. Without a variable name the value will be dropped from the parsed AST.';
						cr;
						cr;
						nextPutAll: self productionSymbol name;
						nextPutAll: ' : '.
					1
						to: self size
						do: [ :i | 
							i == problemIndex ifTrue: [ stream nextPutAll: '>>>' ].
							stream nextPutAll: (self at: i) name.
							i == problemIndex ifTrue: [ stream nextPutAll: '<<<' ].
							stream space ] ] ];
		signal
]

{ #category : #testing }
SmaCCRHS >> hasNamedVariable [
	^ variableNameMap notEmpty
]

{ #category : #testing }
SmaCCRHS >> hasNodeClassDefinition [
	^ self nodeClassDefinition notNil
]

{ #category : #testing }
SmaCCRHS >> hasReduceAction [
	^ reduceCode hasReduceAction
]

{ #category : #comparing }
SmaCCRHS >> hash [
	^ self class hash hashMultiply bitXor: collection hash
]

{ #category : #variables }
SmaCCRHS >> indexOfVariable: aString [
	^ (variableNameMap at: aString ifAbsent: [ ^ nil ]) first
]

{ #category : #'initialize-release' }
SmaCCRHS >> initialize [
	super initialize.
	collection := OrderedCollection new.
	reduceCode := SmaCCDefaultReduceCode onRHS: self.
	variableNameMap := Dictionary new
]

{ #category : #testing }
SmaCCRHS >> locallyDefinesVariable: aString [
	^ (self indexOfVariable: aString) notNil
]

{ #category : #accessing }
SmaCCRHS >> modelTypes: anIdentitySet [
	^ reduceCode modelTypes: anIdentitySet
]

{ #category : #accessing }
SmaCCRHS >> nameLastItem: aString [
	(variableNameMap at: aString ifAbsentPut: [ OrderedCollection new ])
		add: collection size
]

{ #category : #accessing }
SmaCCRHS >> nodeClassDefinition [
	^ nodeClassDefinition
]

{ #category : #accessing }
SmaCCRHS >> nodeClassDefinition: aSmaCCNodeClassDefinition [
	nodeClassDefinition := aSmaCCNodeClassDefinition
]

{ #category : #printing }
SmaCCRHS >> printOn: aStream [
	^ collection
		do: [ :each | each printOn: aStream ]
		separatedBy: [ aStream space ]
]

{ #category : #accessing }
SmaCCRHS >> productionSymbol [
	^ productionSymbol
]

{ #category : #'reduce actions' }
SmaCCRHS >> reduceCode [
	^ reduceCode
]

{ #category : #'reduce actions' }
SmaCCRHS >> reduceCode: aSmaCCReduceCode [
	reduceCode := aSmaCCReduceCode
]

{ #category : #'reduce actions' }
SmaCCRHS >> reduceCodeSource: aString [
	reduceCode := SmaCCSourceReduceCode onRHS: self source: aString
]

{ #category : #testing }
SmaCCRHS >> returnsSingleVariable [
	^ reduceCode returnsSingleVariable
]

{ #category : #testing }
SmaCCRHS >> returnsVariableCollection [
	^ reduceCode returnsVariableCollection
]

{ #category : #accessing }
SmaCCRHS >> ruleNumber [
	^ (productionSymbol ruleNumber bitShift: 10)
		+ (productionSymbol positionOf: self)
]

{ #category : #accessing }
SmaCCRHS >> size [
	^ collection size
]

{ #category : #'initialize-release' }
SmaCCRHS >> symbol: aSmaCCNonTerminalSymbol [
	productionSymbol := aSmaCCNonTerminalSymbol
]

{ #category : #accessing }
SmaCCRHS >> symbolsForVariableName: aString [
	| indices |
	indices := variableNameMap at: aString ifAbsent: [ #() ].
	^ indices collect: [ :i | self at: i ]
]

{ #category : #private }
SmaCCRHS >> unnamedSymbolsDo: aBlock [
	self
		variablesAndSymbolsDo: [ :var :each | 
			var isNil
				ifTrue: [ aBlock value: each ] ]
]

{ #category : #accessing }
SmaCCRHS >> variableDefinitions: aCollection [
	variableDefinitions := aCollection.
	SmaCCVariableDefinition assignIndices: variableDefinitions
]

{ #category : #private }
SmaCCRHS >> variableNameForIndex: anInteger [
	variableNameMap
		keysAndValuesDo: [ :key :value | 
			(value includes: anInteger)
				ifTrue: [ ^ key ] ].
	^ nil
]

{ #category : #private }
SmaCCRHS >> variableNames [
	^ variableNameMap keys
]

{ #category : #private }
SmaCCRHS >> variablesAndSymbolsDo: aBlock [
	collection
		keysAndValuesDo:
			[ :key :value | aBlock value: (self variableNameForIndex: key) value: value ]
]
