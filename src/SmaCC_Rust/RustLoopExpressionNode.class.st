Class {
	#name : #RustLoopExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'loopToken',
		'block',
		'label',
		'colon'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustLoopExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLoopExpression: self
]

{ #category : #generated }
RustLoopExpressionNode >> block [
	^ block
]

{ #category : #generated }
RustLoopExpressionNode >> block: aRustBlockExpressionNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aRustBlockExpressionNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : #generated }
RustLoopExpressionNode >> colon [
	^ colon
]

{ #category : #generated }
RustLoopExpressionNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustLoopExpressionNode >> label [
	^ label
]

{ #category : #generated }
RustLoopExpressionNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : #generated }
RustLoopExpressionNode >> loopToken [
	^ loopToken
]

{ #category : #generated }
RustLoopExpressionNode >> loopToken: aSmaCCToken [
	loopToken := aSmaCCToken
]

{ #category : #generated }
RustLoopExpressionNode >> nodeVariables [
	^ #(#block)
]

{ #category : #generated }
RustLoopExpressionNode >> tokenVariables [
	^ #(#loopToken #label #colon)
]
