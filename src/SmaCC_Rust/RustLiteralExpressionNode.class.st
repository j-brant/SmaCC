Class {
	#name : #RustLiteralExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustLiteralExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLiteralExpression: self
]

{ #category : #generated }
RustLiteralExpressionNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
RustLiteralExpressionNode >> value [
	^ value
]

{ #category : #generated }
RustLiteralExpressionNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
