Class {
	#name : #RustArrayExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'leftBracket',
		'attrs',
		'rightBracket',
		'elements',
		'separators'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustArrayExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrayExpression: self
]

{ #category : #generated }
RustArrayExpressionNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustArrayExpressionNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustArrayExpressionNode >> compositeNodeVariables [
	^ #(#attrs #elements)
]

{ #category : #generated }
RustArrayExpressionNode >> compositeTokenVariables [
	^ #(#separators)
]

{ #category : #generated }
RustArrayExpressionNode >> elements [
	^ elements
]

{ #category : #generated }
RustArrayExpressionNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #'generated-initialize-release' }
RustArrayExpressionNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	elements := OrderedCollection new: 2.
	separators := OrderedCollection new: 2.
]

{ #category : #generated }
RustArrayExpressionNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
RustArrayExpressionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
RustArrayExpressionNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
RustArrayExpressionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
RustArrayExpressionNode >> separators [
	^ separators
]

{ #category : #generated }
RustArrayExpressionNode >> separators: anOrderedCollection [
	separators := anOrderedCollection
]

{ #category : #generated }
RustArrayExpressionNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]
