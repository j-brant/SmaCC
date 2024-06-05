Class {
	#name : #PySpreadExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'operator',
		'expression'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PySpreadExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitSpreadExpression: self
]

{ #category : #generated }
PySpreadExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
PySpreadExpressionNode >> expression: aPyExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aPyExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
PySpreadExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
PySpreadExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
PySpreadExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
PySpreadExpressionNode >> tokenVariables [
	^ #(#operator)
]
