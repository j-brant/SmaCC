Class {
	#name : #YAMLMappingNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'colon',
		'value',
		'key'
	],
	#category : #'SmaCC_YAML-Parser'
}

{ #category : #generated }
YAMLMappingNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitMapping: self
]

{ #category : #generated }
YAMLMappingNode >> colon [
	^ colon
]

{ #category : #generated }
YAMLMappingNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #private }
YAMLMappingNode >> createObject [
	^ self keyObject -> self valueObject
]

{ #category : #testing }
YAMLMappingNode >> isMergeKey [
	^ key notNil
		and: [ key isErrorNode not and: [ key isStringNode and: [ key source = '<<' ] ] ]
]

{ #category : #generated }
YAMLMappingNode >> key [
	^ key
]

{ #category : #generated }
YAMLMappingNode >> key: aYAMLParseNode [
	self key notNil ifTrue: [ self key parent: nil ].
	key := aYAMLParseNode.
	self key notNil ifTrue: [ self key parent: self ]
]

{ #category : #accessing }
YAMLMappingNode >> keyObject [
	^ key ifNotNil: [ key isErrorNode ifFalse: [ key object ] ]
]

{ #category : #generated }
YAMLMappingNode >> nodeVariables [
	^ #(#value #key)
]

{ #category : #enumerating }
YAMLMappingNode >> nodesWithAnchor: aString do: aBlock [
	self anchors
		do: [ :anchor | 
			anchor value = aString
				ifTrue: [ aBlock
						value: (anchor startPosition < colon startPosition ifTrue: [ key ] ifFalse: [ value ]) ] ].
	key ifNotNil: [ key nodesWithAnchor: aString do: aBlock ].
	value ifNotNil: [ value nodesWithAnchor: aString do: aBlock ]
]

{ #category : #generated }
YAMLMappingNode >> tokenVariables [
	^ #(#colon)
]

{ #category : #generated }
YAMLMappingNode >> value [
	^ value
]

{ #category : #generated }
YAMLMappingNode >> value: aYAMLValueNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aYAMLValueNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : #accessing }
YAMLMappingNode >> valueObject [
	^ value ifNotNil: [ value isErrorNode ifFalse: [ value object ] ]
]
