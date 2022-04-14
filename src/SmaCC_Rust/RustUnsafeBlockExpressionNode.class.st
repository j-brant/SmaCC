Class {
	#name : #RustUnsafeBlockExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'unsafeToken',
		'expression'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustUnsafeBlockExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnsafeBlockExpression: self
]

{ #category : #generated }
RustUnsafeBlockExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustUnsafeBlockExpressionNode >> expression: aRustBlockExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustBlockExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustUnsafeBlockExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
RustUnsafeBlockExpressionNode >> tokenVariables [
	^ #(#unsafeToken)
]

{ #category : #generated }
RustUnsafeBlockExpressionNode >> unsafeToken [
	^ unsafeToken
]

{ #category : #generated }
RustUnsafeBlockExpressionNode >> unsafeToken: aSmaCCToken [
	unsafeToken := aSmaCCToken
]
