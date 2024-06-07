Class {
	#name : #PyInitNode,
	#superclass : #PyRootNode,
	#instVars : [
		'equalToken',
		'value'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyInitNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitInit: self
]

{ #category : #generated }
PyInitNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
PyInitNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
PyInitNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
PyInitNode >> tokenVariables [
	^ #(#equalToken)
]

{ #category : #generated }
PyInitNode >> value [
	^ value
]

{ #category : #generated }
PyInitNode >> value: aPyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
