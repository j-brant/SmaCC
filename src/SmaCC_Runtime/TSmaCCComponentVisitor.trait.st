Trait {
	#name : 'TSmaCCComponentVisitor',
	#instVars : [
		'composite'
	],
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : 'SmaCC_Runtime'
}

{ #category : 'visiting' }
TSmaCCComponentVisitor >> acceptNode: aSmaCCParseNode [
	aSmaCCParseNode isNil
		ifTrue: [ ^ nil ].
	^ composite notNil
		ifTrue: [ composite acceptNode: aSmaCCParseNode ]
		ifFalse: [ aSmaCCParseNode acceptVisitor: self ]
]

{ #category : 'accessing' }
TSmaCCComponentVisitor >> composite [
	^ composite
]

{ #category : 'accessing' }
TSmaCCComponentVisitor >> composite: aCompositeVisitor [
	composite := aCompositeVisitor
]
