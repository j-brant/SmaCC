Class {
	#name : #CPPExpressionStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'semicolon',
		'expression'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPExpressionStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpressionStatement: self
]

{ #category : #generated }
CPPExpressionStatementNode >> expression [
	^ expression
]

{ #category : #generated }
CPPExpressionStatementNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPExpressionStatementNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CPPExpressionStatementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPExpressionStatementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPExpressionStatementNode >> tokenVariables [
	^ #(#semicolon)
]
