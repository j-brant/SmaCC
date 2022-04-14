Class {
	#name : #RustEnumNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'enumToken',
		'name',
		'leftBrace',
		'rightBrace',
		'items',
		'commas',
		'where',
		'lt',
		'gt',
		'params',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustEnumNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnum: self
]

{ #category : #generated }
RustEnumNode >> commas [
	^ commas
]

{ #category : #generated }
RustEnumNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustEnumNode >> compositeNodeVariables [
	^ #(#items #params)
]

{ #category : #generated }
RustEnumNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustEnumNode >> enumToken [
	^ enumToken
]

{ #category : #generated }
RustEnumNode >> enumToken: aSmaCCToken [
	enumToken := aSmaCCToken
]

{ #category : #generated }
RustEnumNode >> gt [
	^ gt
]

{ #category : #generated }
RustEnumNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustEnumNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
]

{ #category : #generated }
RustEnumNode >> items [
	^ items
]

{ #category : #generated }
RustEnumNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : #generated }
RustEnumNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RustEnumNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RustEnumNode >> lt [
	^ lt
]

{ #category : #generated }
RustEnumNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustEnumNode >> name [
	^ name
]

{ #category : #generated }
RustEnumNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustEnumNode >> nodeVariables [
	^ #(#where #visibility)
]

{ #category : #generated }
RustEnumNode >> params [
	^ params
]

{ #category : #generated }
RustEnumNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
RustEnumNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RustEnumNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RustEnumNode >> tokenVariables [
	^ #(#enumToken #name #leftBrace #rightBrace #lt #gt)
]

{ #category : #generated }
RustEnumNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustEnumNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]

{ #category : #generated }
RustEnumNode >> where [
	^ where
]

{ #category : #generated }
RustEnumNode >> where: aRustWhereClauseNode [
	self where notNil ifTrue: [ self where parent: nil ].
	where := aRustWhereClauseNode.
	self where notNil ifTrue: [ self where parent: self ]
]
