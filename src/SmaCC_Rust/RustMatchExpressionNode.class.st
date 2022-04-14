Class {
	#name : #RustMatchExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'matchToken',
		'value',
		'leftBrace',
		'attrs',
		'rightBrace',
		'arms',
		'arrows',
		'armValues',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustMatchExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMatchExpression: self
]

{ #category : #generated }
RustMatchExpressionNode >> armValues [
	^ armValues
]

{ #category : #generated }
RustMatchExpressionNode >> armValues: anOrderedCollection [
	self setParents: self armValues to: nil.
	armValues := anOrderedCollection.
	self setParents: self armValues to: self
]

{ #category : #generated }
RustMatchExpressionNode >> arms [
	^ arms
]

{ #category : #generated }
RustMatchExpressionNode >> arms: anOrderedCollection [
	self setParents: self arms to: nil.
	arms := anOrderedCollection.
	self setParents: self arms to: self
]

{ #category : #generated }
RustMatchExpressionNode >> arrows [
	^ arrows
]

{ #category : #generated }
RustMatchExpressionNode >> arrows: anOrderedCollection [
	arrows := anOrderedCollection
]

{ #category : #generated }
RustMatchExpressionNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustMatchExpressionNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustMatchExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
RustMatchExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustMatchExpressionNode >> compositeNodeVariables [
	^ #(#attrs #arms #armValues)
]

{ #category : #generated }
RustMatchExpressionNode >> compositeTokenVariables [
	^ #(#arrows #commas)
]

{ #category : #'generated-initialize-release' }
RustMatchExpressionNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	arms := OrderedCollection new: 2.
	arrows := OrderedCollection new: 2.
	armValues := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustMatchExpressionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RustMatchExpressionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RustMatchExpressionNode >> matchToken [
	^ matchToken
]

{ #category : #generated }
RustMatchExpressionNode >> matchToken: aSmaCCToken [
	matchToken := aSmaCCToken
]

{ #category : #generated }
RustMatchExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
RustMatchExpressionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RustMatchExpressionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RustMatchExpressionNode >> tokenVariables [
	^ #(#matchToken #leftBrace #rightBrace)
]

{ #category : #generated }
RustMatchExpressionNode >> value [
	^ value
]

{ #category : #generated }
RustMatchExpressionNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
