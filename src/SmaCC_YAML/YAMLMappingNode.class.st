Class {
	#name : #YAMLMappingNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'colon',
		'value',
		'key'
	],
	#category : #'SmaCC_YAML'
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

{ #category : #generated }
YAMLMappingNode >> nodeVariables [
	^ #(#value #key)
]

{ #category : #accessing }
YAMLMappingNode >> object [
	^ (key ifNotNil: [ key object ]) -> (value ifNotNil: [ value object ])
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
