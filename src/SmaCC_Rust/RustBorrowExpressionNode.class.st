Class {
	#name : #RustBorrowExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'amp',
		'expression',
		'mutToken'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustBorrowExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBorrowExpression: self
]

{ #category : #generated }
RustBorrowExpressionNode >> amp [
	^ amp
]

{ #category : #generated }
RustBorrowExpressionNode >> amp: aSmaCCToken [
	amp := aSmaCCToken
]

{ #category : #generated }
RustBorrowExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustBorrowExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustBorrowExpressionNode >> mutToken [
	^ mutToken
]

{ #category : #generated }
RustBorrowExpressionNode >> mutToken: aSmaCCToken [
	mutToken := aSmaCCToken
]

{ #category : #generated }
RustBorrowExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
RustBorrowExpressionNode >> tokenVariables [
	^ #(#amp #mutToken)
]
