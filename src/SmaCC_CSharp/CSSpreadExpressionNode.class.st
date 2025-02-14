Class {
	#name : #CSSpreadExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'operator',
		'expression'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSSpreadExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSpreadExpression: self
]

{ #category : #generated }
CSSpreadExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CSSpreadExpressionNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSSpreadExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CSSpreadExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
CSSpreadExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CSSpreadExpressionNode >> tokenVariables [
	^ #(#operator)
]
