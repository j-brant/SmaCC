Class {
	#name : #RustEnumItemNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'attrs',
		'name',
		'leftParen',
		'rightParen',
		'fields',
		'commas',
		'leftBrace',
		'rightBrace',
		'equalsToken',
		'value',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustEnumItemNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnumItem: self
]

{ #category : #generated }
RustEnumItemNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustEnumItemNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustEnumItemNode >> commas [
	^ commas
]

{ #category : #generated }
RustEnumItemNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustEnumItemNode >> compositeNodeVariables [
	^ #(#attrs #fields)
]

{ #category : #generated }
RustEnumItemNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustEnumItemNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
RustEnumItemNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #generated }
RustEnumItemNode >> fields [
	^ fields
]

{ #category : #generated }
RustEnumItemNode >> fields: anOrderedCollection [
	self setParents: self fields to: nil.
	fields := anOrderedCollection.
	self setParents: self fields to: self
]

{ #category : #'generated-initialize-release' }
RustEnumItemNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	fields := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustEnumItemNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RustEnumItemNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RustEnumItemNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustEnumItemNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustEnumItemNode >> name [
	^ name
]

{ #category : #generated }
RustEnumItemNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustEnumItemNode >> nodeVariables [
	^ #(#value #visibility)
]

{ #category : #generated }
RustEnumItemNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RustEnumItemNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RustEnumItemNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustEnumItemNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustEnumItemNode >> tokenVariables [
	^ #(#name #leftParen #rightParen #leftBrace #rightBrace #equalsToken)
]

{ #category : #generated }
RustEnumItemNode >> value [
	^ value
]

{ #category : #generated }
RustEnumItemNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : #generated }
RustEnumItemNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustEnumItemNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]
