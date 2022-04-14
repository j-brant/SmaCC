Class {
	#name : #RustImplementationNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'implToken',
		'types',
		'leftBrace',
		'attrs',
		'items',
		'rightBrace',
		'where',
		'lt',
		'gt',
		'params',
		'commas',
		'forToken',
		'bang',
		'constToken',
		'unsafeToken',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustImplementationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImplementation: self
]

{ #category : #generated }
RustImplementationNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustImplementationNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustImplementationNode >> bang [
	^ bang
]

{ #category : #generated }
RustImplementationNode >> bang: aSmaCCToken [
	bang := aSmaCCToken
]

{ #category : #generated }
RustImplementationNode >> commas [
	^ commas
]

{ #category : #generated }
RustImplementationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustImplementationNode >> compositeNodeVariables [
	^ #(#types #attrs #items #params)
]

{ #category : #generated }
RustImplementationNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustImplementationNode >> constToken [
	^ constToken
]

{ #category : #generated }
RustImplementationNode >> constToken: aSmaCCToken [
	constToken := aSmaCCToken
]

{ #category : #generated }
RustImplementationNode >> forToken [
	^ forToken
]

{ #category : #generated }
RustImplementationNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
RustImplementationNode >> gt [
	^ gt
]

{ #category : #generated }
RustImplementationNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #generated }
RustImplementationNode >> implToken [
	^ implToken
]

{ #category : #generated }
RustImplementationNode >> implToken: aSmaCCToken [
	implToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustImplementationNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	attrs := OrderedCollection new: 2.
	items := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustImplementationNode >> items [
	^ items
]

{ #category : #generated }
RustImplementationNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : #generated }
RustImplementationNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RustImplementationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RustImplementationNode >> lt [
	^ lt
]

{ #category : #generated }
RustImplementationNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustImplementationNode >> nodeVariables [
	^ #(#where #visibility)
]

{ #category : #generated }
RustImplementationNode >> params [
	^ params
]

{ #category : #generated }
RustImplementationNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
RustImplementationNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RustImplementationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RustImplementationNode >> tokenVariables [
	^ #(#implToken #leftBrace #rightBrace #lt #gt #forToken #bang #constToken #unsafeToken)
]

{ #category : #generated }
RustImplementationNode >> types [
	^ types
]

{ #category : #generated }
RustImplementationNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]

{ #category : #generated }
RustImplementationNode >> unsafeToken [
	^ unsafeToken
]

{ #category : #generated }
RustImplementationNode >> unsafeToken: aSmaCCToken [
	unsafeToken := aSmaCCToken
]

{ #category : #generated }
RustImplementationNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustImplementationNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]

{ #category : #generated }
RustImplementationNode >> where [
	^ where
]

{ #category : #generated }
RustImplementationNode >> where: aRustWhereClauseNode [
	self where notNil ifTrue: [ self where parent: nil ].
	where := aRustWhereClauseNode.
	self where notNil ifTrue: [ self where parent: self ]
]
