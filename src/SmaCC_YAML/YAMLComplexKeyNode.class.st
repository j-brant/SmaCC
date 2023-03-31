Class {
	#name : #YAMLComplexKeyNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'questionMark',
		'value'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLComplexKeyNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitComplexKey: self
]

{ #category : #generated }
YAMLComplexKeyNode >> nodeVariables [
	^ #(#value)
]

{ #category : #accessing }
YAMLComplexKeyNode >> object [
	^ value object
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
