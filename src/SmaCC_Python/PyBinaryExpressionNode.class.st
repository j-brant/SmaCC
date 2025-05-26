Class {
	#name : #PyBinaryExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'left',
		'operator',
		'right'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyBinaryExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitBinaryExpression: self
]

{ #category : #generated }
PyBinaryExpressionNode >> left [
	^ left
]

{ #category : #generated }
PyBinaryExpressionNode >> left: aPyExpressionNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aPyExpressionNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : #generated }
PyBinaryExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
PyBinaryExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
PyBinaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
PyBinaryExpressionNode >> right [
	^ right
]

{ #category : #generated }
PyBinaryExpressionNode >> right: aPyExpressionNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aPyExpressionNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : #generated }
PyBinaryExpressionNode >> tokenVariables [
	^ #(#operator)
]
