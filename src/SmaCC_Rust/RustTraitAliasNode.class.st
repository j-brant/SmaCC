Class {
	#name : #RustTraitAliasNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'traitToken',
		'name',
		'equalsToken',
		'colon',
		'where',
		'semicolon',
		'typeBounds',
		'pluses',
		'lt',
		'gt',
		'params',
		'commas',
		'autoToken',
		'unsafeToken',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTraitAliasNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTraitAlias: self
]

{ #category : #generated }
RustTraitAliasNode >> autoToken [
	^ autoToken
]

{ #category : #generated }
RustTraitAliasNode >> autoToken: aSmaCCToken [
	autoToken := aSmaCCToken
]

{ #category : #generated }
RustTraitAliasNode >> colon [
	^ colon
]

{ #category : #generated }
RustTraitAliasNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustTraitAliasNode >> commas [
	^ commas
]

{ #category : #generated }
RustTraitAliasNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustTraitAliasNode >> compositeNodeVariables [
	^ #(#typeBounds #params)
]

{ #category : #generated }
RustTraitAliasNode >> compositeTokenVariables [
	^ #(#pluses #commas)
]

{ #category : #generated }
RustTraitAliasNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
RustTraitAliasNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #generated }
RustTraitAliasNode >> gt [
	^ gt
]

{ #category : #generated }
RustTraitAliasNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustTraitAliasNode >> initialize [
	super initialize.
	typeBounds := OrderedCollection new: 2.
	pluses := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustTraitAliasNode >> lt [
	^ lt
]

{ #category : #generated }
RustTraitAliasNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustTraitAliasNode >> name [
	^ name
]

{ #category : #generated }
RustTraitAliasNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustTraitAliasNode >> nodeVariables [
	^ #(#where #visibility)
]

{ #category : #generated }
RustTraitAliasNode >> params [
	^ params
]

{ #category : #generated }
RustTraitAliasNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
RustTraitAliasNode >> pluses [
	^ pluses
]

{ #category : #generated }
RustTraitAliasNode >> pluses: anOrderedCollection [
	pluses := anOrderedCollection
]

{ #category : #generated }
RustTraitAliasNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustTraitAliasNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustTraitAliasNode >> tokenVariables [
	^ #(#traitToken #name #equalsToken #colon #semicolon #lt #gt #autoToken #unsafeToken)
]

{ #category : #generated }
RustTraitAliasNode >> traitToken [
	^ traitToken
]

{ #category : #generated }
RustTraitAliasNode >> traitToken: aSmaCCToken [
	traitToken := aSmaCCToken
]

{ #category : #generated }
RustTraitAliasNode >> typeBounds [
	^ typeBounds
]

{ #category : #generated }
RustTraitAliasNode >> typeBounds: anOrderedCollection [
	self setParents: self typeBounds to: nil.
	typeBounds := anOrderedCollection.
	self setParents: self typeBounds to: self
]

{ #category : #generated }
RustTraitAliasNode >> unsafeToken [
	^ unsafeToken
]

{ #category : #generated }
RustTraitAliasNode >> unsafeToken: aSmaCCToken [
	unsafeToken := aSmaCCToken
]

{ #category : #generated }
RustTraitAliasNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustTraitAliasNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]

{ #category : #generated }
RustTraitAliasNode >> where [
	^ where
]

{ #category : #generated }
RustTraitAliasNode >> where: aRustWhereClauseNode [
	self where notNil ifTrue: [ self where parent: nil ].
	where := aRustWhereClauseNode.
	self where notNil ifTrue: [ self where parent: self ]
]
