Class {
	#name : #RustExpressionStatementNode,
	#superclass : #RustStatementNode,
	#instVars : [
		'expression',
		'semicolon'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustExpressionStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpressionStatement: self
]

{ #category : #generated }
RustExpressionStatementNode >> expression [
	^ expression
]

{ #category : #generated }
RustExpressionStatementNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustExpressionStatementNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
RustExpressionStatementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustExpressionStatementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustExpressionStatementNode >> tokenVariables [
	^ #(#semicolon)
]
