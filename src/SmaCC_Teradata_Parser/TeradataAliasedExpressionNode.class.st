Class {
	#name : #TeradataAliasedExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'expression',
		'alias',
		'asToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataAliasedExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAliasedExpression: self
]

{ #category : #generated }
TeradataAliasedExpressionNode >> alias [
	^ alias
]

{ #category : #generated }
TeradataAliasedExpressionNode >> alias: aSmaCCToken [
	alias := aSmaCCToken
]

{ #category : #generated }
TeradataAliasedExpressionNode >> asToken [
	^ asToken
]

{ #category : #generated }
TeradataAliasedExpressionNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
TeradataAliasedExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
TeradataAliasedExpressionNode >> expression: aTeradataExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aTeradataExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
TeradataAliasedExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
TeradataAliasedExpressionNode >> tokenVariables [
	^ #(#alias #asToken)
]
