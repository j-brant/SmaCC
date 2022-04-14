Class {
	#name : #RustGroupedExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'leftParen',
		'attrs',
		'expression',
		'rightParen'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustGroupedExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGroupedExpression: self
]

{ #category : #generated }
RustGroupedExpressionNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustGroupedExpressionNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustGroupedExpressionNode >> compositeNodeVariables [
	^ #(#attrs)
]

{ #category : #generated }
RustGroupedExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustGroupedExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
RustGroupedExpressionNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
]

{ #category : #generated }
RustGroupedExpressionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustGroupedExpressionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustGroupedExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
RustGroupedExpressionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustGroupedExpressionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustGroupedExpressionNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
