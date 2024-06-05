Class {
	#name : #PyUnaryExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'operator',
		'expression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyUnaryExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitUnaryExpression: self
]

{ #category : #generated }
PyUnaryExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
PyUnaryExpressionNode >> expression: aPyExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aPyExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
PyUnaryExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
PyUnaryExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
PyUnaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
PyUnaryExpressionNode >> tokenVariables [
	^ #(#operator)
]
