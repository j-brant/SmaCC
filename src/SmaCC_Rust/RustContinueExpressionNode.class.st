Class {
	#name : #RustContinueExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'continueToken',
		'value',
		'label'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustContinueExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitContinueExpression: self
]

{ #category : #generated }
RustContinueExpressionNode >> continueToken [
	^ continueToken
]

{ #category : #generated }
RustContinueExpressionNode >> continueToken: aSmaCCToken [
	continueToken := aSmaCCToken
]

{ #category : #generated }
RustContinueExpressionNode >> label [
	^ label
]

{ #category : #generated }
RustContinueExpressionNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : #generated }
RustContinueExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
RustContinueExpressionNode >> tokenVariables [
	^ #(#continueToken #label)
]

{ #category : #generated }
RustContinueExpressionNode >> value [
	^ value
]

{ #category : #generated }
RustContinueExpressionNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
