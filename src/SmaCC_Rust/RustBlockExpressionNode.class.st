Class {
	#name : #RustBlockExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'leftBrace',
		'attrs',
		'rightBrace',
		'statements'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustBlockExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBlockExpression: self
]

{ #category : #generated }
RustBlockExpressionNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustBlockExpressionNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustBlockExpressionNode >> compositeNodeVariables [
	^ #(#attrs #statements)
]

{ #category : #'generated-initialize-release' }
RustBlockExpressionNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
RustBlockExpressionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RustBlockExpressionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RustBlockExpressionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RustBlockExpressionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RustBlockExpressionNode >> statements [
	^ statements
]

{ #category : #generated }
RustBlockExpressionNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
RustBlockExpressionNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
