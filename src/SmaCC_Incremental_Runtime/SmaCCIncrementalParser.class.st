Class {
	#name : 'SmaCCIncrementalParser',
	#superclass : 'SmaCCGLRParser',
	#instVars : [
		'id',
		'previousAST',
		'previousMap'
	],
	#category : 'SmaCC_Incremental_Runtime',
	#package : 'SmaCC_Incremental_Runtime'
}

{ #category : 'parsing' }
SmaCCIncrementalParser class >> parse: aString previous: aNode [
	^ self
		parse: aString
		startingAt: self defaultStartingState
		previous: aNode
]

{ #category : 'parsing' }
SmaCCIncrementalParser class >> parse: aString startingAt: anInteger previous: aNode [
	| parser value |
	parser := self
			createParserOnStream: (ReadStream on: aString)
			startingAt: anInteger.
	parser previousAST: aNode.
	parser createDefaultErrorHandlers.
	value := parser parse.
	(value isKindOf: SmaCCParseNode) ifTrue: [ value completeSource: aString ].
	^ value
]

{ #category : 'parsing' }
SmaCCIncrementalParser class >> parseWithErrors: aString previous: aNode [
	^ self
		parseWithErrors: aString
		startingAt: self defaultStartingState
		previous: aNode
]

{ #category : 'parsing' }
SmaCCIncrementalParser class >> parseWithErrors: aString startingAt: anInteger previous: aNode [
	^ [ | parser value |
	parser := self
			createParserOnStream: (ReadStream on: aString)
			startingAt: anInteger.
	parser previousAST: aNode.
	parser createDefaultErrorHandlers.
	value := parser parse.
	(value isKindOf: SmaCCParseNode) ifTrue: [ value completeSource: aString ].
	value ]
		on: SmaCCParserError
		do: [ :ex | ex isResumable ifTrue: [ ex resume ] ifFalse: [ ex signal ] ]
]

{ #category : 'private' }
SmaCCIncrementalParser >> checkPreviousParse [
	| incrementalState |
	previousAST ifNil: [ ^ self ].
	self findNodeForCurrentState
		ifNotNil: [ :node | 
			incrementalState := node attributeNamed: #incremental.
			scanner restoreState: incrementalState endingScannerState.
			currentState scannerState: incrementalState endingScannerState.
			currentToken := nil.
			self transitionTo: incrementalState toParserState withValue: node.
			currentState setStart: incrementalState startingScannerState ]
]

{ #category : 'private' }
SmaCCIncrementalParser >> deferredReduceActionClass [
	^ SmaCCIncrementalDeferredReduceAction
]

{ #category : 'private' }
SmaCCIncrementalParser >> findNodeForCurrentState [
	^ self previousMap
		at: {self currentState.
				currentState scannerState}
		ifAbsent: [  ]
]

{ #category : 'private' }
SmaCCIncrementalParser >> getNextToken [
	currentToken
		ifNil: [ currentState stateBeforeToken: currentState scannerState ].
	^ super getNextToken
]

{ #category : 'initialize-release' }
SmaCCIncrementalParser >> initialize [
	super initialize.
	id := 0
]

{ #category : 'private' }
SmaCCIncrementalParser >> parserStateClass [
	^ SmaCCIncrementalParserState
]

{ #category : 'private' }
SmaCCIncrementalParser >> popStacks [
	currentState popStart.
	^ super popStacks
]

{ #category : 'accessing' }
SmaCCIncrementalParser >> previousAST [
	^ previousAST
]

{ #category : 'accessing' }
SmaCCIncrementalParser >> previousAST: anObject [
	previousAST := anObject.
	previousMap := Dictionary new.
	previousAST
		withAllNodesDo: [ :node | 
			id := id max: (node attributeNamed: #id ifAbsent: [ 0 ]).
			(node attributeNamed: #incremental)
				ifNotNil: [ :inc | 
					previousMap
						at: {inc fromParserState.
								inc startingScannerState}
						put: node ] ]
]

{ #category : 'private' }
SmaCCIncrementalParser >> previousMap [
	^ previousMap
]

{ #category : 'private-actions' }
SmaCCIncrementalParser >> reduce: anInteger [
	| reduceEntry items size newState value start |
	reduceEntry := self reduceTable at: anInteger.
	items := Array new: (size := reduceEntry at: 2).
	nodeStack size < size
		ifTrue: [ self killState.
			^ currentToken := nil ].
	size
		to: 1
		by: -1
		do: [ :i | 
			start := currentState getStart.
			items at: i put: self popStacks ].
	newState := (self actionFor: (reduceEntry at: 1)) bitShift: -2.
	value := self performReduceEntry: reduceEntry with: items.
	value smaccIsNodeLike
		ifTrue: [ | incrementalState |
			incrementalState := SmaCCIncrementalNodeState new
					startingScannerState: start copy;
					endingScannerState: currentState stateBeforeToken copy;
					fromParserState: self currentState;
					toParserState: newState;
					lookaheadTokenEnd: currentToken stopPosition;
					yourself.
			value
				incrementalState: incrementalState;
				assignIdUsing: [ id := id + 1 ] ].
	self transitionTo: newState withValue: value
]

{ #category : 'private-actions' }
SmaCCIncrementalParser >> shift: stateIndex [
	| value |
	value := currentState stateBeforeToken.
	(self transitionTo: stateIndex withValue: currentToken) value: value.
	currentToken := nil
]

{ #category : 'private' }
SmaCCIncrementalParser >> transitionTo: stateIndex withValue: anObject [
	| result |
	super transitionTo: stateIndex withValue: anObject.
	result := currentState pushStart.
	self checkPreviousParse.
	^ result
]
