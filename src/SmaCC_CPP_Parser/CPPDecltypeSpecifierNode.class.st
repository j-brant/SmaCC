Class {
	#name : #CPPDecltypeSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'decltypeToken',
		'leftParen',
		'expression',
		'rightParen',
		'autoToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPDecltypeSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDecltypeSpecifier: self
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> autoToken [
	^ autoToken
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> autoToken: aSmaCCToken [
	autoToken := aSmaCCToken
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> decltypeToken [
	^ decltypeToken
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> decltypeToken: aSmaCCToken [
	decltypeToken := aSmaCCToken
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> expression [
	^ expression
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPDecltypeSpecifierNode >> tokenVariables [
	^ #(#decltypeToken #leftParen #rightParen #autoToken)
]
