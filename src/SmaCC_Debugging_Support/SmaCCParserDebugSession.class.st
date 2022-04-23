Class {
	#name : #SmaCCParserDebugSession,
	#superclass : #DebugSession,
	#instVars : [
		'rootContext'
	],
	#classInstVars : [
		'maxSearchDepth'
	],
	#category : #'SmaCC_Debugging_Support-Debugger'
}

{ #category : #'instance creation' }
SmaCCParserDebugSession class >> from: aDebugSession [
	| session |
	(aDebugSession isKindOf: superclass) ifFalse: [ self error: 'Unknown debug session' ].
	session := self basicNew.
	1 to: superclass instSize do: [ :i | session instVarAt: i put: (aDebugSession instVarAt: i) ].
	^ session
]

{ #category : #testing }
SmaCCParserDebugSession class >> handlesContext: aContext [
	| max count |
	max := self maxSearchDepth.
	count := 1.
	^ (aContext
		findContextSuchThat: [ :each | 
			count := count + 1.
			count > max
				ifTrue: [ ^ false ].
			self isParseContext: each ]) notNil
]

{ #category : #testing }
SmaCCParserDebugSession class >> isParseContext: each [
	^ each selector = #parse and: [ each receiver isKindOf: SmaCCParser ]
]

{ #category : #private }
SmaCCParserDebugSession class >> maxSearchDepth [
	^ maxSearchDepth ifNil: [ 50 ]
]

{ #category : #private }
SmaCCParserDebugSession class >> maxSearchDepth: anInteger [
	maxSearchDepth := anInteger
]

{ #category : #building }
SmaCCParserDebugSession >> actionLabelFor: anInteger [
	| type parser ambiguous |
	parser := self parser.
	type := anInteger bitAnd: parser actionMask.
	type = parser acceptAction
		ifTrue: [ ^ 'Accept' ].
	type = parser shiftAction
		ifTrue: [ ^ 'Shift' ].
	type = parser reduceAction
		ifTrue: [ ^ self reduceActionName: (anInteger bitShift: -2) ].
	ambiguous := OrderedCollection new.
	parser ambiguousTransitionsAt: (anInteger bitShift: -2) into: ambiguous.
	^ String
		streamContents: [ :stream | 
			ambiguous
				do: [ :each | stream nextPutAll: (self actionLabelFor: each) ]
				separatedBy: [ stream nextPut: $, ] ]
]

{ #category : #private }
SmaCCParserDebugSession >> glrParserStates [
	| states |
	states := self parser states.
	^ states isEmpty
		ifTrue: [ Array with: self parser currentGLRState ]
		ifFalse: [ states ]
]

{ #category : #private }
SmaCCParserDebugSession >> inputSelectionInterval [
	| context receiver |
	context := self context
		findContextSuchThat: [ :each | 
			(each receiver isKindOf: SmaCCScanner)
				or: [ each receiver isKindOf: SmaCCParser ] ].
	context isNil
		ifTrue: [ ^ 1 to: 0 ].
	receiver := context receiver.
	^ (receiver isKindOf: SmaCCParser)
		ifTrue: [ (receiver currentToken isNil
				or: [ receiver currentToken startPosition isNil ])
				ifTrue: [ self scanner position + 1 to: self scanner position ]
				ifFalse: [ receiver currentToken sourceInterval ] ]
		ifFalse: [ self scanner debugStart + 1 to: self scanner position ]
]

{ #category : #accessing }
SmaCCParserDebugSession >> inputText [
	^ self scanner debugSource
]

{ #category : #testing }
SmaCCParserDebugSession >> isActive [
	^ rootContext notNil and: [ rootContext isDead not and: [ rootContext ~= self process suspendedContext or: [ rootContext willReturn not ] ] ]
]

{ #category : #testing }
SmaCCParserDebugSession >> isInsideReductionAction [
	self context
		findContextSuchThat: [ :each | 
			((each receiver isKindOf: SmaCCParser)
				and: [ each selector beginsWith: 'reduceActionFor' ])
				ifTrue: [ ^ true ].
			each == rootContext ].
	^ false
]

{ #category : #testing }
SmaCCParserDebugSession >> isScanning [
	^ self isScanning: self context
]

{ #category : #testing }
SmaCCParserDebugSession >> isScanning: aContext [
	aContext
		findContextSuchThat: [ :each | 
			(each receiver isKindOf: SmaCCScanner)
				ifTrue: [ ^ true ].
			each == rootContext ].
	^ false
]

{ #category : #accessing }
SmaCCParserDebugSession >> parser [
	^ self rootContext ifNotNil: [ :context | context receiver ]
]

{ #category : #private }
SmaCCParserDebugSession >> parserStack [
	| states nodes items context reduceContext |
	states := self parser stateStack.
	nodes := self parser nodeStack.
	items := OrderedCollection new.
	1 to: states size - 1 do: [ :i | 
		items
			addFirst:
				(Array
					with: (self parser symbolForTransitionFrom: (states at: i) to: (states at: i + 1))
					with: (nodes at: i)) ].
	context := self context
		findContextSuchThat: [ :each | 
			(each receiver isKindOf: SmaCCParser)
				and: [ each selector = #performReduceEntry:with: ] ].
	context notNil
		ifTrue: [ items add: #('' '').
			reduceContext := context
				findContextSuchThat: [ :each | 
					(each receiver isKindOf: SmaCCParser)
						and: [ each selector = #reduce: ] ].
			items addFirst: #('' '').
			(context tempAt: 2) size to: 1 by: -1 do: [ :i | 
				items
					addFirst:
						(Array
							with: 'nodes at: ' , i printString
							with: ((context tempAt: 2) at: i)) ].
			items
				addFirst:
					(Array
						with: 'Reducing:'
						with:
							(self parser
								symbolNameFor:
									(reduceContext receiver reduceTable at: (reduceContext tempAt: 1))
										first)) ].
	self parser currentToken
		ifNotNil: [ :token | 
			| stream |
			stream := WriteStream on: String new.
			token ids
				do: [ :each | stream nextPutAll: (self parser symbolNameFor: each) ]
				separatedBy: [ stream nextPut: $; ].
			items
				addFirst: #('' '');
				addFirst: (Array with: stream contents with: token);
				addFirst: (Array with: 'Lookahead:' with: '') ].
	^ items
]

{ #category : #building }
SmaCCParserDebugSession >> potentialStateActions [
	| items ids |
	ids := self parser currentToken
		ifNotNil: [ :token | token ids ]
		ifNil: [ #() ].
	items := OrderedCollection new.
	self parser
		actionsAndSymbolsForState: self parser stateStack last
		do: [ :action :symbol | 
			items
				add:
					(Array
						with: (self parser symbolNameFor: symbol)
						with: (self actionLabelFor: action)
						with: ((ids includes: symbol) or: [ self parser currentToken isNil ])
						with: symbol) ].
	^ items
		asSortedCollection: [ :a :b | 
			a third = b third
				ifTrue: [ a last < b last ]
				ifFalse: [ a third ] ]
]

{ #category : #building }
SmaCCParserDebugSession >> reduceActionName: anInteger [
	| entry |
	entry := self parser reduceTable at: anInteger.
	^ 'Reduce(' , (entry at: 2) printString , ') as '
		, (self parser symbolNameFor: entry first)
]

{ #category : #accessing }
SmaCCParserDebugSession >> rootContext [
	^ rootContext
		ifNil:
			[ rootContext := interruptedContext
				findContextSuchThat: [ :each | each selector = #parse and: [ each receiver isKindOf: SmaCCParser ] ] ]
]

{ #category : #accessing }
SmaCCParserDebugSession >> scanner [
	^ self parser scanner
]

{ #category : #building }
SmaCCParserDebugSession >> scannerProperties [
	| items scanner string |
	scanner := self scanner.
	items := OrderedCollection new.
	string := scanner outputStream
		ifNil: [ '' ]
		ifNotNil: [ :stream | stream contents ].
	items add: (Array with: 'Scope' with: scanner scope).
	self isScanning
		ifTrue: [ items
				add: (Array with: 'Current Character' with: scanner currentCharacter);
				add: (Array with: 'Start Index' with: scanner debugStart).
			string isEmpty
				ifFalse: [ items
						add: (Array with: 'Scan String' with: string);
						add:
							(Array
								with: 'Match String'
								with: (string copyFrom: 1 to: scanner lastOutputStreamMatchPosition));
						add:
							(Array
								with: 'Match Type'
								with:
									(scanner matchActions
										ifNil: [ '' ]
										ifNotNil: [ :symbols | 
											| stream |
											stream := WriteStream on: String new.
											symbols
												do: [ :each | stream nextPutAll: (self parser symbolNameFor: each) ]
												separatedBy: [ stream space ].
											stream contents ])) ] ]
		ifFalse: [ items add: (Array with: 'Position' with: scanner position) ].
	^ items
]

{ #category : #accessing }
SmaCCParserDebugSession >> tokenIntervalFor: anObject [
	(anObject isKindOf: SequenceableCollection)
		ifTrue: [ | interval |
			anObject
				do: [ :each | 
					| newInterval |
					newInterval := self tokenIntervalFor: each.
					interval isNil
						ifTrue: [ interval := newInterval ]
						ifFalse: [ newInterval notNil
								ifTrue:
									[ interval := (interval first min: newInterval first) to: (interval last max: newInterval last) ] ] ].
			^ interval ].
	(anObject isKindOf: SmaCCToken)
		ifTrue: [ (anObject startPosition notNil and: [ anObject startPosition > 0 ])
				ifTrue: [ ^ anObject sourceInterval ] ].
	(anObject isKindOf: SmaCCParseNode)
		ifTrue: [ | start end tokens |
			start := SmallInteger maxVal.
			end := 0.
			tokens := OrderedCollection new.
			anObject allTokensInto: tokens.
			tokens
				do: [ :each | 
					(each startPosition notNil and: [ each startPosition > 0 ])
						ifTrue: [ start := start min: each startPosition.
							end := end max: each stopPosition ] ].
			start <= end
				ifTrue: [ ^ start to: end ] ].
	(anObject isKindOf: SmaCCDeferredReduceAction)
		ifTrue: [ ^ self tokenIntervalFor: anObject arguments ].
	(anObject isKindOf: SmaCCDeferredChoice)
		ifTrue: [ ^ self tokenIntervalFor: anObject possibleItems first ].
	^ nil
]
