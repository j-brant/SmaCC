Class {
	#name : #PyAwaitExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'awaitToken',
		'expression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyAwaitExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitAwaitExpression: self
]

{ #category : #generated }
PyAwaitExpressionNode >> awaitToken [
	^ awaitToken
]

{ #category : #generated }
PyAwaitExpressionNode >> awaitToken: aSmaCCToken [
	awaitToken := aSmaCCToken
]

{ #category : #generated }
PyAwaitExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
PyAwaitExpressionNode >> expression: aPyExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aPyExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
PyAwaitExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
PyAwaitExpressionNode >> tokenVariables [
	^ #(#awaitToken)
]
