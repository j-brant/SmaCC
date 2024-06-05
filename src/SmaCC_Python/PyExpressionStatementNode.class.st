Class {
	#name : #PyExpressionStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'expression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyExpressionStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitExpressionStatement: self
]

{ #category : #generated }
PyExpressionStatementNode >> expression [
	^ expression
]

{ #category : #generated }
PyExpressionStatementNode >> expression: aPyExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aPyExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
PyExpressionStatementNode >> nodeVariables [
	^ #(#expression)
]
