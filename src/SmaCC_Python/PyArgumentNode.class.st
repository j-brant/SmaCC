Class {
	#name : #PyArgumentNode,
	#superclass : #PyRootNode,
	#instVars : [
		'name',
		'equalToken',
		'value'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyArgumentNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitArgument: self
]

{ #category : #generated }
PyArgumentNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
PyArgumentNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
PyArgumentNode >> name [
	^ name
]

{ #category : #generated }
PyArgumentNode >> name: aPyExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPyExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PyArgumentNode >> nodeVariables [
	^ #(#name #value)
]

{ #category : #generated }
PyArgumentNode >> tokenVariables [
	^ #(#equalToken)
]

{ #category : #generated }
PyArgumentNode >> value [
	^ value
]

{ #category : #generated }
PyArgumentNode >> value: aPyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
