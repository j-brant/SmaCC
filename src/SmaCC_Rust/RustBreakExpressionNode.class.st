Class {
	#name : #RustBreakExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'breakToken',
		'value',
		'label'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustBreakExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBreakExpression: self
]

{ #category : #generated }
RustBreakExpressionNode >> breakToken [
	^ breakToken
]

{ #category : #generated }
RustBreakExpressionNode >> breakToken: aSmaCCToken [
	breakToken := aSmaCCToken
]

{ #category : #generated }
RustBreakExpressionNode >> label [
	^ label
]

{ #category : #generated }
RustBreakExpressionNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : #generated }
RustBreakExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
RustBreakExpressionNode >> tokenVariables [
	^ #(#breakToken #label)
]

{ #category : #generated }
RustBreakExpressionNode >> value [
	^ value
]

{ #category : #generated }
RustBreakExpressionNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
