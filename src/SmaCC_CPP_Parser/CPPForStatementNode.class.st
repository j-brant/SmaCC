Class {
	#name : #CPPForStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'forToken',
		'leftParen',
		'initializerStatement',
		'semicolon',
		'rightParen',
		'statement',
		'updateExpression',
		'condition'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPForStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitForStatement: self
]

{ #category : #generated }
CPPForStatementNode >> condition [
	^ condition
]

{ #category : #generated }
CPPForStatementNode >> condition: anObject [
	condition := anObject
]

{ #category : #generated }
CPPForStatementNode >> forToken [
	^ forToken
]

{ #category : #generated }
CPPForStatementNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
CPPForStatementNode >> initializerStatement [
	^ initializerStatement
]

{ #category : #generated }
CPPForStatementNode >> initializerStatement: anObject [
	initializerStatement := anObject
]

{ #category : #generated }
CPPForStatementNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPForStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPForStatementNode >> nodeVariables [
	^ #(#updateExpression)
]

{ #category : #generated }
CPPForStatementNode >> otherVariables [
	^ #(#initializerStatement #statement #condition)
]

{ #category : #generated }
CPPForStatementNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPForStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPForStatementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPForStatementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPForStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPForStatementNode >> statement: anObject [
	statement := anObject
]

{ #category : #generated }
CPPForStatementNode >> tokenVariables [
	^ #(#forToken #leftParen #semicolon #rightParen)
]

{ #category : #generated }
CPPForStatementNode >> updateExpression [
	^ updateExpression
]

{ #category : #generated }
CPPForStatementNode >> updateExpression: aCPPExpressionNode [
	self updateExpression notNil
		ifTrue: [ self updateExpression parent: nil ].
	updateExpression := aCPPExpressionNode.
	self updateExpression notNil
		ifTrue: [ self updateExpression parent: self ]
]
