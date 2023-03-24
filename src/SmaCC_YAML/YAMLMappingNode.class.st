Class {
	#name : #YAMLMappingNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'colon',
		'value',
		'anchors',
		'key'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLMappingNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitMapping: self
]

{ #category : #generated }
YAMLMappingNode >> anchors [
	^ anchors
]

{ #category : #generated }
YAMLMappingNode >> anchors: anOrderedCollection [
	anchors := anOrderedCollection
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
YAMLMappingNode >> compositeTokenVariables [
	^ #(#anchors)
]

{ #category : #'generated-initialize-release' }
YAMLMappingNode >> initialize [
	super initialize.
	anchors := OrderedCollection new: 2.
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

{ #category : #generated }
YAMLMappingNode >> tokenVariables [
	^ #(#colon)
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
