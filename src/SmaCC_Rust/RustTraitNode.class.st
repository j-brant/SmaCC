Class {
	#name : #RustTraitNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'traitToken',
		'name',
		'where',
		'leftBrace',
		'attrs',
		'items',
		'rightBrace',
		'colon',
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
RustTraitNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTrait: self
]

{ #category : #generated }
RustTraitNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustTraitNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustTraitNode >> autoToken [
	^ autoToken
]

{ #category : #generated }
RustTraitNode >> autoToken: aSmaCCToken [
	autoToken := aSmaCCToken
]

{ #category : #generated }
RustTraitNode >> colon [
	^ colon
]

{ #category : #generated }
RustTraitNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustTraitNode >> commas [
	^ commas
]

{ #category : #generated }
RustTraitNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustTraitNode >> compositeNodeVariables [
	^ #(#attrs #items #typeBounds #params)
]

{ #category : #generated }
RustTraitNode >> compositeTokenVariables [
	^ #(#pluses #commas)
]

{ #category : #generated }
RustTraitNode >> gt [
	^ gt
]

{ #category : #generated }
RustTraitNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustTraitNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	items := OrderedCollection new: 2.
	typeBounds := OrderedCollection new: 2.
	pluses := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustTraitNode >> items [
	^ items
]

{ #category : #generated }
RustTraitNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : #generated }
RustTraitNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RustTraitNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RustTraitNode >> lt [
	^ lt
]

{ #category : #generated }
RustTraitNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustTraitNode >> name [
	^ name
]

{ #category : #generated }
RustTraitNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustTraitNode >> nodeVariables [
	^ #(#where #visibility)
]

{ #category : #generated }
RustTraitNode >> params [
	^ params
]

{ #category : #generated }
RustTraitNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
RustTraitNode >> pluses [
	^ pluses
]

{ #category : #generated }
RustTraitNode >> pluses: anOrderedCollection [
	pluses := anOrderedCollection
]

{ #category : #generated }
RustTraitNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RustTraitNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RustTraitNode >> tokenVariables [
	^ #(#traitToken #name #leftBrace #rightBrace #colon #lt #gt #autoToken #unsafeToken)
]

{ #category : #generated }
RustTraitNode >> traitToken [
	^ traitToken
]

{ #category : #generated }
RustTraitNode >> traitToken: aSmaCCToken [
	traitToken := aSmaCCToken
]

{ #category : #generated }
RustTraitNode >> typeBounds [
	^ typeBounds
]

{ #category : #generated }
RustTraitNode >> typeBounds: anOrderedCollection [
	self setParents: self typeBounds to: nil.
	typeBounds := anOrderedCollection.
	self setParents: self typeBounds to: self
]

{ #category : #generated }
RustTraitNode >> unsafeToken [
	^ unsafeToken
]

{ #category : #generated }
RustTraitNode >> unsafeToken: aSmaCCToken [
	unsafeToken := aSmaCCToken
]

{ #category : #generated }
RustTraitNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustTraitNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]

{ #category : #generated }
RustTraitNode >> where [
	^ where
]

{ #category : #generated }
RustTraitNode >> where: aRustWhereClauseNode [
	self where notNil ifTrue: [ self where parent: nil ].
	where := aRustWhereClauseNode.
	self where notNil ifTrue: [ self where parent: self ]
]
