Class {
	#name : #RustAsyncBlockExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'asyncToken',
		'expression',
		'moveToken'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustAsyncBlockExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAsyncBlockExpression: self
]

{ #category : #generated }
RustAsyncBlockExpressionNode >> asyncToken [
	^ asyncToken
]

{ #category : #generated }
RustAsyncBlockExpressionNode >> asyncToken: aSmaCCToken [
	asyncToken := aSmaCCToken
]

{ #category : #generated }
RustAsyncBlockExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustAsyncBlockExpressionNode >> expression: aRustBlockExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustBlockExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustAsyncBlockExpressionNode >> moveToken [
	^ moveToken
]

{ #category : #generated }
RustAsyncBlockExpressionNode >> moveToken: aSmaCCToken [
	moveToken := aSmaCCToken
]

{ #category : #generated }
RustAsyncBlockExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
RustAsyncBlockExpressionNode >> tokenVariables [
	^ #(#asyncToken #moveToken)
]
