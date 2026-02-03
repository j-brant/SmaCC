Class {
	#name : 'SmaCCIncrementalParserState',
	#superclass : 'SmaCCParserState',
	#instVars : [
		'starts',
		'stateBeforeToken',
		'potentialNodes'
	],
	#category : 'SmaCC_Incremental_Runtime',
	#package : 'SmaCC_Incremental_Runtime'
}

{ #category : 'private' }
SmaCCIncrementalParserState >> dismissPotentialNodes [
	[ potentialNodes notNil
		and: [ potentialNodes value incrementalState startingScannerState position
				< scannerState position ] ]
		whileTrue: [ potentialNodes := potentialNodes nextLink ]
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> findNodeToReuse [
	| inc current |
	self dismissPotentialNodes.
	current := potentialNodes.
	[ current notNil
		and: [ (inc := current value incrementalState) startingScannerState position
				= scannerState position ] ]
		whileTrue: [ (inc startingScannerState = scannerState
				and: [ inc fromParserState = stateStack last ]) ifTrue: [ ^ current value ].
			current := current nextLink ].
	^ nil
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> getStart [
	^ starts value
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> popStart [
	starts := starts nextLink
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> potentialNodes [
	^ potentialNodes
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> potentialNodes: anObject [
	potentialNodes := anObject
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> pushStart [
	^ starts := starts asLinkPrepend: nil
]

{ #category : 'initialization' }
SmaCCIncrementalParserState >> setStart: aScannerState [
	starts value: aScannerState
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> starts [
	^ starts
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> starts: anObject [
	starts := anObject
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> stateBeforeToken [
	^ stateBeforeToken
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> stateBeforeToken: aScannerState [
	stateBeforeToken := aScannerState
]
