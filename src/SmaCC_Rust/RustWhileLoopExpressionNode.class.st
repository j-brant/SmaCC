Class {
	#name : #RustWhileLoopExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'whileToken',
		'condition',
		'block',
		'label',
		'colon'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustWhileLoopExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhileLoopExpression: self
]

{ #category : #generated }
RustWhileLoopExpressionNode >> block [
	^ block
]

{ #category : #generated }
RustWhileLoopExpressionNode >> block: aRustBlockExpressionNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aRustBlockExpressionNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : #generated }
RustWhileLoopExpressionNode >> colon [
	^ colon
]

{ #category : #generated }
RustWhileLoopExpressionNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustWhileLoopExpressionNode >> condition [
	^ condition
]

{ #category : #generated }
RustWhileLoopExpressionNode >> condition: aRustExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aRustExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
RustWhileLoopExpressionNode >> label [
	^ label
]

{ #category : #generated }
RustWhileLoopExpressionNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : #generated }
RustWhileLoopExpressionNode >> nodeVariables [
	^ #(#condition #block)
]

{ #category : #generated }
RustWhileLoopExpressionNode >> tokenVariables [
	^ #(#whileToken #label #colon)
]

{ #category : #generated }
RustWhileLoopExpressionNode >> whileToken [
	^ whileToken
]

{ #category : #generated }
RustWhileLoopExpressionNode >> whileToken: aSmaCCToken [
	whileToken := aSmaCCToken
]
