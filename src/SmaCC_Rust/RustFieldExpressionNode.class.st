Class {
	#name : #RustFieldExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'expression',
		'period',
		'name'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustFieldExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFieldExpression: self
]

{ #category : #generated }
RustFieldExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustFieldExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustFieldExpressionNode >> name [
	^ name
]

{ #category : #generated }
RustFieldExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustFieldExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
RustFieldExpressionNode >> period [
	^ period
]

{ #category : #generated }
RustFieldExpressionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
RustFieldExpressionNode >> tokenVariables [
	^ #(#period #name)
]
