Class {
	#name : #JavaYieldStatementNode,
	#superclass : #JavaStatementNode,
	#instVars : [
		'yieldToken',
		'semicolon',
		'expression'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaYieldStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitYieldStatement: self
]

{ #category : #generated }
JavaYieldStatementNode >> expression [
	^ expression
]

{ #category : #generated }
JavaYieldStatementNode >> expression: aJavaExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aJavaExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
JavaYieldStatementNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JavaYieldStatementNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
JavaYieldStatementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JavaYieldStatementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JavaYieldStatementNode >> tokenVariables [
	^ #(#yieldToken)
]

{ #category : #generated }
JavaYieldStatementNode >> yieldToken [
	^ yieldToken
]

{ #category : #generated }
JavaYieldStatementNode >> yieldToken: aSmaCCToken [
	yieldToken := aSmaCCToken
]
