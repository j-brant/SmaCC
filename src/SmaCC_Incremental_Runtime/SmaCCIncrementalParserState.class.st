Class {
	#name : 'SmaCCIncrementalParserState',
	#superclass : 'SmaCCParserState',
	#instVars : [
		'starts',
		'stateBeforeToken',
		'potentialNodes',
		'idNodes'
	],
	#category : 'SmaCC_Incremental_Runtime',
	#package : 'SmaCC_Incremental_Runtime'
}

{ #category : 'private' }
SmaCCIncrementalParserState >> addIdNode: node in: linkedNodes [
	linkedNodes ifNil: [ ^ node asLink ].
	node stopPosition <= linkedNodes value stopPosition
		ifTrue: [ ^ linkedNodes asLinkPrepend: node ].
	^ (self addIdNode: node in: linkedNodes nextLink)
		asLinkPrepend: linkedNodes value
]

{ #category : 'private' }
SmaCCIncrementalParserState >> dismissPotentialNodes [
	[ potentialNodes notNil
		and: [ potentialNodes value incrementalState startingScannerState position
				< scannerState position
				or: [ potentialNodes value incrementalState isModified
						or: [ potentialNodes value incrementalState isAmbiguous ] ] ] ]
		whileTrue: [ | node |
			node := potentialNodes value.
			(node startPosition <= node stopPosition
				or: [ potentialNodes value incrementalState isModified
						or: [ potentialNodes value incrementalState isAmbiguous ] ])
				ifTrue: [ idNodes := self addIdNode: node in: idNodes ].
			potentialNodes := potentialNodes nextLink ]
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> findIdForNode: aNode [
	| current stop start |
	stop := aNode calculateStopPosition.
	[ idNodes notNil and: [ idNodes value stopPosition < stop ] ]
		whileTrue: [ idNodes := idNodes nextLink ].
	current := idNodes.
	[ current notNil and: [ stop >= current value stopPosition ] ]
		whileTrue: [ (stop = current value stopPosition
				and: [ aNode class = current value class
						and: [ (start ifNil: [ start := aNode calculateStartPosition ])
								= current value startPosition ] ]) ifTrue: [ ^ current value id ].
			current := current nextLink ].
	^ nil
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
				and: [ inc fromParserState = stateStack last ])
				ifTrue: [ potentialNodes := current nextLink.
					[ potentialNodes notNil
						and: [ potentialNodes value isDescendantFrom: current value ] ]
						whileTrue: [ potentialNodes := potentialNodes nextLink ].
					^ current value ].
			current := current nextLink ].
	^ nil
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> getStart [
	^ starts value
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> idNodes [
	^ idNodes
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
