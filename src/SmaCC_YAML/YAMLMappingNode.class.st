Class {
	#name : #YAMLMappingNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'key',
		'colon',
		'value'
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
YAMLMappingNode >> key: aSmaCCToken [
	key := aSmaCCToken
]

{ #category : #generated }
YAMLMappingNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
YAMLMappingNode >> tokenVariables [
	^ #(#key #colon)
]

{ #category : #generated }
YAMLMappingNode >> value [
	^ value
]

{ #category : #generated }
YAMLMappingNode >> value: aYAMLParseNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aYAMLParseNode.
	self value notNil ifTrue: [ self value parent: self ]
]
