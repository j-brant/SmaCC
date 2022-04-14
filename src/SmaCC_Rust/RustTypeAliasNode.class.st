Class {
	#name : #RustTypeAliasNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'typeToken',
		'name',
		'semicolon',
		'equalsToken',
		'type',
		'where',
		'colon',
		'typeBounds',
		'pluses',
		'lt',
		'gt',
		'params',
		'commas',
		'visibility',
		'attrs'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTypeAliasNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeAlias: self
]

{ #category : #generated }
RustTypeAliasNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustTypeAliasNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustTypeAliasNode >> colon [
	^ colon
]

{ #category : #generated }
RustTypeAliasNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustTypeAliasNode >> commas [
	^ commas
]

{ #category : #generated }
RustTypeAliasNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustTypeAliasNode >> compositeNodeVariables [
	^ #(#typeBounds #params #attrs)
]

{ #category : #generated }
RustTypeAliasNode >> compositeTokenVariables [
	^ #(#pluses #commas)
]

{ #category : #generated }
RustTypeAliasNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
RustTypeAliasNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #generated }
RustTypeAliasNode >> gt [
	^ gt
]

{ #category : #generated }
RustTypeAliasNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustTypeAliasNode >> initialize [
	super initialize.
	typeBounds := OrderedCollection new: 2.
	pluses := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	attrs := OrderedCollection new: 2.
]

{ #category : #generated }
RustTypeAliasNode >> lt [
	^ lt
]

{ #category : #generated }
RustTypeAliasNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustTypeAliasNode >> name [
	^ name
]

{ #category : #generated }
RustTypeAliasNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustTypeAliasNode >> nodeVariables [
	^ #(#type #where #visibility)
]

{ #category : #generated }
RustTypeAliasNode >> params [
	^ params
]

{ #category : #generated }
RustTypeAliasNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
RustTypeAliasNode >> pluses [
	^ pluses
]

{ #category : #generated }
RustTypeAliasNode >> pluses: anOrderedCollection [
	pluses := anOrderedCollection
]

{ #category : #generated }
RustTypeAliasNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustTypeAliasNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustTypeAliasNode >> tokenVariables [
	^ #(#typeToken #name #semicolon #equalsToken #colon #lt #gt)
]

{ #category : #generated }
RustTypeAliasNode >> type [
	^ type
]

{ #category : #generated }
RustTypeAliasNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
RustTypeAliasNode >> typeBounds [
	^ typeBounds
]

{ #category : #generated }
RustTypeAliasNode >> typeBounds: anOrderedCollection [
	self setParents: self typeBounds to: nil.
	typeBounds := anOrderedCollection.
	self setParents: self typeBounds to: self
]

{ #category : #generated }
RustTypeAliasNode >> typeToken [
	^ typeToken
]

{ #category : #generated }
RustTypeAliasNode >> typeToken: aSmaCCToken [
	typeToken := aSmaCCToken
]

{ #category : #generated }
RustTypeAliasNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustTypeAliasNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]

{ #category : #generated }
RustTypeAliasNode >> where [
	^ where
]

{ #category : #generated }
RustTypeAliasNode >> where: aRustWhereClauseNode [
	self where notNil ifTrue: [ self where parent: nil ].
	where := aRustWhereClauseNode.
	self where notNil ifTrue: [ self where parent: self ]
]
