Class {
	#name : #RustBoxExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'boxToken',
		'value'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustBoxExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBoxExpression: self
]

{ #category : #generated }
RustBoxExpressionNode >> boxToken [
	^ boxToken
]

{ #category : #generated }
RustBoxExpressionNode >> boxToken: aSmaCCToken [
	boxToken := aSmaCCToken
]

{ #category : #generated }
RustBoxExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
RustBoxExpressionNode >> tokenVariables [
	^ #(#boxToken)
]

{ #category : #generated }
RustBoxExpressionNode >> value [
	^ value
]

{ #category : #generated }
RustBoxExpressionNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
