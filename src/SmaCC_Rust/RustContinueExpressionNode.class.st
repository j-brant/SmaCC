Class {
	#name : 'RustContinueExpressionNode',
	#superclass : 'RustExpressionNode',
	#instVars : [
		'continueToken',
		'label'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustContinueExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitContinueExpression: self
]

{ #category : 'generated' }
RustContinueExpressionNode >> continueToken [
	^ continueToken
]

{ #category : 'generated' }
RustContinueExpressionNode >> continueToken: aSmaCCToken [
	continueToken := aSmaCCToken
]

{ #category : 'generated' }
RustContinueExpressionNode >> label [
	^ label
]

{ #category : 'generated' }
RustContinueExpressionNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : 'generated' }
RustContinueExpressionNode >> tokenVariables [
	^ #(#continueToken #label)
]
