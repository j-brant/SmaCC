Class {
	#name : #RustTupleIndexExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'expression',
		'period',
		'index'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTupleIndexExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTupleIndexExpression: self
]

{ #category : #generated }
RustTupleIndexExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustTupleIndexExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustTupleIndexExpressionNode >> index [
	^ index
]

{ #category : #generated }
RustTupleIndexExpressionNode >> index: aSmaCCToken [
	index := aSmaCCToken
]

{ #category : #generated }
RustTupleIndexExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
RustTupleIndexExpressionNode >> period [
	^ period
]

{ #category : #generated }
RustTupleIndexExpressionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
RustTupleIndexExpressionNode >> tokenVariables [
	^ #(#period #index)
]
