Class {
	#name : 'SmaCCIncrementalParser',
	#superclass : 'SmaCCGLRParser',
	#instVars : [
		'id',
		'previousAST'
	],
	#category : 'SmaCC_Incremental_Runtime',
	#package : 'SmaCC_Incremental_Runtime'
}

{ #category : 'parsing' }
SmaCCIncrementalParser class >> parse: aString startingAt: anInteger previous: aNode [
	| parser value |
	parser := self
			createParserOnStream: (ReadStream on: aString)
			startingAt: anInteger.
	parser previousAST: aNode.
	value := parser parse.
	(value isKindOf: SmaCCParseNode) ifTrue: [ value completeSource: aString ].
	^ value
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
	self findNodeToReuse
		ifNotNil: [ :node | 
			incrementalState := node incrementalState.
			scanner restoreState: incrementalState endingScannerState.
			currentState scannerState: incrementalState endingScannerState.
			currentToken := nil.
			self transitionTo: incrementalState toParserState withValue: node.
			currentState setStart: incrementalState startingScannerState ]
]

{ #category : 'private' }
SmaCCIncrementalParser >> computePotentialNodes [
	| potentialNodes |
	potentialNodes := nil.
	(self potentialReusableNodesIn: previousAST)
		ifNotEmpty: [ :nodes | potentialNodes := nodes firstLink ].
	states do: [ :each | each potentialNodes: potentialNodes ]
]

{ #category : 'as yet unclassified' }
SmaCCIncrementalParser >> createErrorNode: aToken stack: stackContents dismissed: dismissedTokens [
	| node |
	node := super
			createErrorNode: errorToken
			stack: stackContents
			dismissed: dismissedTokens.
	node id: (id := id + 1).
	^ node
]

{ #category : 'private' }
SmaCCIncrementalParser >> deferredReduceActionClass [
	^ SmaCCIncrementalDeferredReduceAction
]

{ #category : 'private' }
SmaCCIncrementalParser >> findNodeToReuse [
	^ currentState findNodeToReuse
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

{ #category : 'private' }
SmaCCIncrementalParser >> potentialReusableNodesIn: aNode [
	| nodes |
	nodes := LinkedList new.
	aNode ifNil: [ ^ nodes ].
	id := id max: aNode id.
	(self sortedChildrenOf: aNode)
		do: [ :each | nodes addAll: (self potentialReusableNodesIn: each) ].
	aNode incrementalState ifNotNil: [ :inc | nodes addFirst: aNode ].
	^ nodes
]

{ #category : 'accessing' }
SmaCCIncrementalParser >> previousAST [
	^ previousAST
]

{ #category : 'private' }
SmaCCIncrementalParser >> previousAST: aNode [
	previousAST := aNode
]

{ #category : 'private-actions' }
SmaCCIncrementalParser >> reduce: anInteger [
	| reduceEntry items size newState value start incrementalState current |
	reduceEntry := self reduceTable at: anInteger.
	items := Array new: (size := reduceEntry at: 2).
	nodeStack size < size
		ifTrue: [ self killState.
			^ currentToken := nil ].
	size = 0
		ifTrue: [ start := currentState stateBeforeToken ]
		ifFalse: [ size
				to: 1
				by: -1
				do: [ :i | 
					start := currentState getStart.
					items at: i put: self popStacks ] ].
	newState := (self actionFor: (reduceEntry at: 1)) bitShift: -2.
	value := self performReduceEntry: reduceEntry with: items.
	value smaccIsNodeLike
		ifTrue: [ incrementalState := SmaCCIncrementalNodeState new
					startingScannerState: (start
							ifNil: [ SmaCCScannerState position: -1 scope: #default ]
							ifNotNil: [ start copy ]);
					endingScannerState: currentState stateBeforeToken copy;
					fromParserState: self currentState;
					toParserState: newState;
					lookaheadTokenEnd: currentToken stopPosition;
					isEOF: self isEOFToken;
					isAmbiguous: states size > 1;
					yourself.
			current := currentState.
			value
				incrementalState: incrementalState;
				assignIdUsing: [ :node :previousId | ((current findIdForNode: node) ifNil: [ previousId ]) ifNil: [ id := id + 1 ] ] ].
	(self transitionTo: newState withValue: value) value: start
]

{ #category : 'private' }
SmaCCIncrementalParser >> setStartingStatesIfNone [
	super setStartingStatesIfNone.
	self computePotentialNodes.
	states size
		to: 1
		by: -1
		do: [ :i | 
			self restoreState: (states at: i).
			self checkPreviousParse ]
]

{ #category : 'private-actions' }
SmaCCIncrementalParser >> shift: stateIndex [
	| value |
	value := currentState stateBeforeToken.
	(self transitionTo: stateIndex withValue: currentToken) value: value.
	currentToken := nil
]

{ #category : 'private' }
SmaCCIncrementalParser >> sortedChildrenOf: aNode [
	| children |
	children := OrderedCollection new.
	aNode
		nodesDo: [ :each | children add: each ]
		andTokensDo: nil
		includeErrors: true.
	children sort: aNode nodeSortBlock.
	^ children
]

{ #category : 'private' }
SmaCCIncrementalParser >> transitionTo: stateIndex withValue: anObject [
	| result |
	super transitionTo: stateIndex withValue: anObject.
	result := currentState pushStart.
	self checkPreviousParse.
	^ result
]
