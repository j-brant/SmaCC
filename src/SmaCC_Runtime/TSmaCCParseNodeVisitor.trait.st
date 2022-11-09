Trait {
	#name : #TSmaCCParseNodeVisitor,
	#category : 'SmaCC_Runtime'
}

{ #category : #visiting }
TSmaCCParseNodeVisitor >> accept: anObject [
	(anObject isKindOf: SmaCCParseNode)
		ifTrue: [ ^ self acceptNode: anObject ].
	(anObject isKindOf: Collection)
		ifTrue: [ ^ self acceptNodes: anObject ].
	^ anObject
]

{ #category : #visiting }
TSmaCCParseNodeVisitor >> acceptNode: aSmaCCParseNode [
	aSmaCCParseNode isNil
		ifTrue: [ ^ nil ].
	^ aSmaCCParseNode acceptVisitor: self
]

{ #category : #visiting }
TSmaCCParseNodeVisitor >> acceptNodes: aCollection [
	aCollection do: [ :each | self acceptNode: each ].
	^ aCollection
]

{ #category : #visiting }
TSmaCCParseNodeVisitor >> visitSmaCCError: aSmaCCError [
	^ self visitSmaCCParseNode: aSmaCCError
]

{ #category : #visiting }
TSmaCCParseNodeVisitor >> visitSmaCCParseNode: aSmaCCParseNode [
	self acceptNodes: aSmaCCParseNode sortedChildren.
	^ aSmaCCParseNode
]
