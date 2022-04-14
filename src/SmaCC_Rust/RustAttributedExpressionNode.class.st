Class {
	#name : #RustAttributedExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'attr',
		'expression'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustAttributedExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttributedExpression: self
]

{ #category : #generated }
RustAttributedExpressionNode >> attr [
	^ attr
]

{ #category : #generated }
RustAttributedExpressionNode >> attr: aRustAttributeNode [
	self attr notNil ifTrue: [ self attr parent: nil ].
	attr := aRustAttributeNode.
	self attr notNil ifTrue: [ self attr parent: self ]
]

{ #category : #generated }
RustAttributedExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustAttributedExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustAttributedExpressionNode >> nodeVariables [
	^ #(#attr #expression)
]
