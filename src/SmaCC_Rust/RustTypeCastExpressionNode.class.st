Class {
	#name : #RustTypeCastExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'expression',
		'asToken',
		'type'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTypeCastExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeCastExpression: self
]

{ #category : #generated }
RustTypeCastExpressionNode >> asToken [
	^ asToken
]

{ #category : #generated }
RustTypeCastExpressionNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
RustTypeCastExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustTypeCastExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustTypeCastExpressionNode >> nodeVariables [
	^ #(#expression #type)
]

{ #category : #generated }
RustTypeCastExpressionNode >> tokenVariables [
	^ #(#asToken)
]

{ #category : #generated }
RustTypeCastExpressionNode >> type [
	^ type
]

{ #category : #generated }
RustTypeCastExpressionNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]
