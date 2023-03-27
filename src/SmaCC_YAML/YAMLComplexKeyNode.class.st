Class {
	#name : #YAMLComplexKeyNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'questionMark',
		'value',
		'anchors'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLComplexKeyNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitComplexKey: self
]

{ #category : #generated }
YAMLComplexKeyNode >> anchors [
	^ anchors
]

{ #category : #generated }
YAMLComplexKeyNode >> anchors: anOrderedCollection [
	anchors := anOrderedCollection
]

{ #category : #generated }
YAMLComplexKeyNode >> compositeTokenVariables [
	^ #(#anchors)
]

{ #category : #'generated-initialize-release' }
YAMLComplexKeyNode >> initialize [
	super initialize.
	anchors := OrderedCollection new: 2.
]

{ #category : #generated }
YAMLComplexKeyNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
YAMLComplexKeyNode >> questionMark [
	^ questionMark
]

{ #category : #generated }
YAMLComplexKeyNode >> questionMark: aSmaCCToken [
	questionMark := aSmaCCToken
]

{ #category : #generated }
YAMLComplexKeyNode >> tokenVariables [
	^ #(#questionMark)
]

{ #category : #generated }
YAMLComplexKeyNode >> value [
	^ value
]

{ #category : #generated }
YAMLComplexKeyNode >> value: aYAMLParseNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aYAMLParseNode.
	self value notNil ifTrue: [ self value parent: self ]
]
