Class {
	#name : #YAMLComplexKeyNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'questionMark',
		'value'
	],
	#category : #'SmaCC_YAML-Parser'
}

{ #category : #generated }
YAMLComplexKeyNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitComplexKey: self
]

{ #category : #private }
YAMLComplexKeyNode >> createObject [
	^ value ifNotNil: [ value object ]
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
YAMLComplexKeyNode >> value: aYAMLValueNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aYAMLValueNode.
	self value notNil ifTrue: [ self value parent: self ]
]
