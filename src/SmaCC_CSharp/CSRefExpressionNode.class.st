Class {
	#name : #CSRefExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'refToken',
		'expression'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSRefExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRefExpression: self
]

{ #category : #generated }
CSRefExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CSRefExpressionNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSRefExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CSRefExpressionNode >> refToken [
	^ refToken
]

{ #category : #generated }
CSRefExpressionNode >> refToken: aSmaCCToken [
	refToken := aSmaCCToken
]

{ #category : #generated }
CSRefExpressionNode >> tokenVariables [
	^ #(#refToken)
]
