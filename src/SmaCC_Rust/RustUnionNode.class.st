Class {
	#name : #RustUnionNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'unionToken',
		'name',
		'leftBrace',
		'fields',
		'commas',
		'rightBrace',
		'where',
		'lt',
		'gt',
		'params',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustUnionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnion: self
]

{ #category : #generated }
RustUnionNode >> commas [
	^ commas
]

{ #category : #generated }
RustUnionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustUnionNode >> compositeNodeVariables [
	^ #(#fields #params)
]

{ #category : #generated }
RustUnionNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustUnionNode >> fields [
	^ fields
]

{ #category : #generated }
RustUnionNode >> fields: anOrderedCollection [
	self setParents: self fields to: nil.
	fields := anOrderedCollection.
	self setParents: self fields to: self
]

{ #category : #generated }
RustUnionNode >> gt [
	^ gt
]

{ #category : #generated }
RustUnionNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustUnionNode >> initialize [
	super initialize.
	fields := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
]

{ #category : #generated }
RustUnionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RustUnionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RustUnionNode >> lt [
	^ lt
]

{ #category : #generated }
RustUnionNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustUnionNode >> name [
	^ name
]

{ #category : #generated }
RustUnionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustUnionNode >> nodeVariables [
	^ #(#where #visibility)
]

{ #category : #generated }
RustUnionNode >> params [
	^ params
]

{ #category : #generated }
RustUnionNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
RustUnionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RustUnionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RustUnionNode >> tokenVariables [
	^ #(#unionToken #name #leftBrace #rightBrace #lt #gt)
]

{ #category : #generated }
RustUnionNode >> unionToken [
	^ unionToken
]

{ #category : #generated }
RustUnionNode >> unionToken: aSmaCCToken [
	unionToken := aSmaCCToken
]

{ #category : #generated }
RustUnionNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustUnionNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]

{ #category : #generated }
RustUnionNode >> where [
	^ where
]

{ #category : #generated }
RustUnionNode >> where: aRustWhereClauseNode [
	self where notNil ifTrue: [ self where parent: nil ].
	where := aRustWhereClauseNode.
	self where notNil ifTrue: [ self where parent: self ]
]
