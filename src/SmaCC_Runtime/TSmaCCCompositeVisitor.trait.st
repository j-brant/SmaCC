Trait {
	#name : 'TSmaCCCompositeVisitor',
	#instVars : [
		'visitors',
		'visitorMap'
	],
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : 'SmaCC_Runtime'
}

{ #category : 'visiting' }
TSmaCCCompositeVisitor >> acceptNode: aSmaCCParseNode [
	aSmaCCParseNode isNil
		ifTrue: [ ^ nil ].
	^ (self lookupVisitorFor: aSmaCCParseNode)
		ifNil: [ self visitSmaCCParseNode: aSmaCCParseNode ]
		ifNotNil: [ :visitor | aSmaCCParseNode acceptVisitor: visitor ]
]

{ #category : 'visitors' }
TSmaCCCompositeVisitor >> addVisitor: aSmaCCParseNodeVisitor [
	visitors isNil
		ifTrue: [ visitors := OrderedCollection new ].
	visitors add: aSmaCCParseNodeVisitor.
	aSmaCCParseNodeVisitor composite: self.
	visitorMap := nil
]

{ #category : 'private' }
TSmaCCCompositeVisitor >> doesVisitor: aVisitor support: aSmaCCParseNode [
	^ aVisitor class allTraits includes: aSmaCCParseNode visitorTrait
]

{ #category : 'private' }
TSmaCCCompositeVisitor >> lookupErrorVisitorFor: aSmaCCParseNode [
	| visitorTrait |
	visitorTrait := aSmaCCParseNode visitorTrait.
	visitorTrait ~= TSmaCCParseNodeVisitor
		ifTrue: [ ^ visitors
				detect: [ :each | self doesVisitor: each support: aSmaCCParseNode ]
				ifNone: [ self ] ].
	^ self
]

{ #category : 'private' }
TSmaCCCompositeVisitor >> lookupVisitorFor: aSmaCCParseNode [
	visitors isNil
		ifTrue: [ ^ self missingVisitorFor: aSmaCCParseNode ].
	visitorMap isNil
		ifTrue: [ visitorMap := IdentityDictionary new ].
	^ aSmaCCParseNode isErrorNode
		ifTrue: [ self lookupErrorVisitorFor: aSmaCCParseNode ]
		ifFalse: [ visitorMap
				at: aSmaCCParseNode class
				ifAbsentPut: [ visitors
						detect: [ :each | self doesVisitor: each support: aSmaCCParseNode ]
						ifNone: [ self missingVisitorFor: aSmaCCParseNode ] ] ]
]

{ #category : 'private' }
TSmaCCCompositeVisitor >> missingVisitorFor: aSmaCCParseNode [
	^ (self doesVisitor: self support: aSmaCCParseNode)
		ifTrue: [ self ]
]

{ #category : 'visitors' }
TSmaCCCompositeVisitor >> removeVisitor: aSmaCCParseNodeVisitor [
	visitors isNil
		ifTrue: [ ^ self ].
	visitors remove: aSmaCCParseNodeVisitor ifAbsent: [ ^ self ].
	aSmaCCParseNodeVisitor composite: nil.
	visitorMap := nil
]
