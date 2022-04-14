Class {
	#name : #RustTupleExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'leftParen',
		'attrs',
		'rightParen',
		'elements',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTupleExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTupleExpression: self
]

{ #category : #generated }
RustTupleExpressionNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustTupleExpressionNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustTupleExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
RustTupleExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustTupleExpressionNode >> compositeNodeVariables [
	^ #(#attrs #elements)
]

{ #category : #generated }
RustTupleExpressionNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustTupleExpressionNode >> elements [
	^ elements
]

{ #category : #generated }
RustTupleExpressionNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #'generated-initialize-release' }
RustTupleExpressionNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	elements := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustTupleExpressionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustTupleExpressionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustTupleExpressionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustTupleExpressionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustTupleExpressionNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
