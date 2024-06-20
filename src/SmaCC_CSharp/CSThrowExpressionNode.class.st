Class {
	#name : #CSThrowExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'throwToken',
		'expression'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSThrowExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitThrowExpression: self
]

{ #category : #generated }
CSThrowExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CSThrowExpressionNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSThrowExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CSThrowExpressionNode >> throwToken [
	^ throwToken
]

{ #category : #generated }
CSThrowExpressionNode >> throwToken: aSmaCCToken [
	throwToken := aSmaCCToken
]

{ #category : #generated }
CSThrowExpressionNode >> tokenVariables [
	^ #(#throwToken)
]
