Class {
	#name : #JSDecoratorExpressionNode,
	#superclass : #JSExpressionNode,
	#instVars : [
		'atToken',
		'expression'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSDecoratorExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDecoratorExpression: self
]

{ #category : #generated }
JSDecoratorExpressionNode >> atToken [
	^ atToken
]

{ #category : #generated }
JSDecoratorExpressionNode >> atToken: aSmaCCToken [
	atToken := aSmaCCToken
]

{ #category : #generated }
JSDecoratorExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
JSDecoratorExpressionNode >> expression: aJSExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aJSExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
JSDecoratorExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
JSDecoratorExpressionNode >> tokenVariables [
	^ #(#atToken)
]
