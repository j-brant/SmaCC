Class {
	#name : #RustAwaitExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'expression',
		'period',
		'awaitToken'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustAwaitExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAwaitExpression: self
]

{ #category : #generated }
RustAwaitExpressionNode >> awaitToken [
	^ awaitToken
]

{ #category : #generated }
RustAwaitExpressionNode >> awaitToken: aSmaCCToken [
	awaitToken := aSmaCCToken
]

{ #category : #generated }
RustAwaitExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustAwaitExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustAwaitExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
RustAwaitExpressionNode >> period [
	^ period
]

{ #category : #generated }
RustAwaitExpressionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
RustAwaitExpressionNode >> tokenVariables [
	^ #(#period #awaitToken)
]
