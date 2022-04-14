Class {
	#name : #RustStructNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'structToken',
		'name',
		'left',
		'right',
		'fields',
		'commas',
		'semicolon',
		'where',
		'lt',
		'gt',
		'params',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustStructNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStruct: self
]

{ #category : #generated }
RustStructNode >> commas [
	^ commas
]

{ #category : #generated }
RustStructNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustStructNode >> compositeNodeVariables [
	^ #(#fields #params)
]

{ #category : #generated }
RustStructNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustStructNode >> fields [
	^ fields
]

{ #category : #generated }
RustStructNode >> fields: anOrderedCollection [
	self setParents: self fields to: nil.
	fields := anOrderedCollection.
	self setParents: self fields to: self
]

{ #category : #generated }
RustStructNode >> gt [
	^ gt
]

{ #category : #generated }
RustStructNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustStructNode >> initialize [
	super initialize.
	fields := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
]

{ #category : #generated }
RustStructNode >> left [
	^ left
]

{ #category : #generated }
RustStructNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
RustStructNode >> lt [
	^ lt
]

{ #category : #generated }
RustStructNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustStructNode >> name [
	^ name
]

{ #category : #generated }
RustStructNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustStructNode >> nodeVariables [
	^ #(#where #visibility)
]

{ #category : #generated }
RustStructNode >> params [
	^ params
]

{ #category : #generated }
RustStructNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
RustStructNode >> right [
	^ right
]

{ #category : #generated }
RustStructNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
RustStructNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustStructNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustStructNode >> structToken [
	^ structToken
]

{ #category : #generated }
RustStructNode >> structToken: aSmaCCToken [
	structToken := aSmaCCToken
]

{ #category : #generated }
RustStructNode >> tokenVariables [
	^ #(#structToken #name #left #right #semicolon #lt #gt)
]

{ #category : #generated }
RustStructNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustStructNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]

{ #category : #generated }
RustStructNode >> where [
	^ where
]

{ #category : #generated }
RustStructNode >> where: aRustWhereClauseNode [
	self where notNil ifTrue: [ self where parent: nil ].
	where := aRustWhereClauseNode.
	self where notNil ifTrue: [ self where parent: self ]
]
