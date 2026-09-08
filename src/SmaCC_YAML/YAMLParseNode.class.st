Class {
	#name : 'YAMLParseNode',
	#superclass : 'SmaCCParseNode',
	#instVars : [
		'anchors',
		'tags'
	],
	#category : 'SmaCC_YAML-Parser',
	#package : 'SmaCC_YAML',
	#tag : 'Parser'
}

{ #category : 'generated' }
YAMLParseNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitParse: self
]

{ #category : 'generated' }
YAMLParseNode >> anchors [
	^ anchors
]

{ #category : 'generated' }
YAMLParseNode >> anchors: anOrderedCollection [
	anchors := anOrderedCollection
]

{ #category : 'generated' }
YAMLParseNode >> compositeTokenVariables [
	^ #(#anchors #tags)
]

{ #category : 'private' }
YAMLParseNode >> createObject [
	^ self subclassResponsibility
]

{ #category : 'accessing' }
YAMLParseNode >> document [
	^ (parent isNil or: [ parent isKindOf: YAMLFileNode ])
		ifTrue: [ self ]
		ifFalse: [ parent document ]
]

{ #category : 'accessing' }
YAMLParseNode >> findNodesWithAnchor: aString [
	| nodes |
	nodes := OrderedCollection new.
	self nodesWithAnchor: aString do: [ :each | nodes add: each ].
	^ nodes
]

{ #category : 'generated-initialize-release' }
YAMLParseNode >> initialize [
	super initialize.
	anchors := OrderedCollection new: 2.
	tags := OrderedCollection new: 2.
]

{ #category : 'testing' }
YAMLParseNode >> isStringNode [
	^ false
]

{ #category : 'accessing' }
YAMLParseNode >> nodeForObject: anObject [
	^ (self attributeNamed: #nodeMap ifAbsentPut: [ IdentityDictionary new ])
		at: anObject
		ifAbsentPut: [ | node |
			self
				withAllNodesDo: [ :each | (each attributeNamed: #object) == anObject ifTrue: [ node := each ] ].
			node ]
]

{ #category : 'accessing' }
YAMLParseNode >> nodesForObject: anObject [
	^ anObject isImmediateObject
		ifTrue: [ | nodes |
			nodes := OrderedCollection new.
			self
				withAllNodesDo: [ :each | (each attributeNamed: #object) == anObject ifTrue: [ nodes add: each ] ].
			nodes ]
		ifFalse: [ (self nodeForObject: anObject)
				ifNotNil: [ :node | {node} ]
				ifNil: [ #() ] ]
]

{ #category : 'enumerating' }
YAMLParseNode >> nodesWithAnchor: aString do: aBlock [
	(self anchors anySatisfy: [ :anchor | anchor value = aString ])
		ifTrue: [ aBlock value: self ].
	self sortedChildren do: [ :each | each nodesWithAnchor: aString do: aBlock ]
]

{ #category : 'accessing' }
YAMLParseNode >> object [
	^ self attributeNamed: #object ifAbsentPut: [ self createObject ]
]

{ #category : 'generated' }
YAMLParseNode >> tags [
	^ tags
]

{ #category : 'generated' }
YAMLParseNode >> tags: anOrderedCollection [
	tags := anOrderedCollection
]
