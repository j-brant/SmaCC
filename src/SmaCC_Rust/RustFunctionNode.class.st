Class {
	#name : #RustFunctionNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'externToken',
		'abi',
		'unsafeToken',
		'asyncToken',
		'constToken',
		'defaultToken',
		'fnToken',
		'name',
		'leftParen',
		'rightParen',
		'block',
		'semicolon',
		'where',
		'arrow',
		'types',
		'attrs',
		'selfToken',
		'mutToken',
		'amp',
		'lifetime',
		'colons',
		'commas',
		'patterns',
		'bars',
		'ellipsises',
		'lt',
		'gt',
		'params',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustFunctionNode >> abi [
	^ abi
]

{ #category : #generated }
RustFunctionNode >> abi: aSmaCCToken [
	abi := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunction: self
]

{ #category : #generated }
RustFunctionNode >> amp [
	^ amp
]

{ #category : #generated }
RustFunctionNode >> amp: aSmaCCToken [
	amp := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> arrow [
	^ arrow
]

{ #category : #generated }
RustFunctionNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> asyncToken [
	^ asyncToken
]

{ #category : #generated }
RustFunctionNode >> asyncToken: aSmaCCToken [
	asyncToken := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustFunctionNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustFunctionNode >> bars [
	^ bars
]

{ #category : #generated }
RustFunctionNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustFunctionNode >> block [
	^ block
]

{ #category : #generated }
RustFunctionNode >> block: aRustBlockExpressionNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aRustBlockExpressionNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : #generated }
RustFunctionNode >> colons [
	^ colons
]

{ #category : #generated }
RustFunctionNode >> colons: anOrderedCollection [
	colons := anOrderedCollection
]

{ #category : #generated }
RustFunctionNode >> commas [
	^ commas
]

{ #category : #generated }
RustFunctionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustFunctionNode >> compositeNodeVariables [
	^ #(#types #attrs #patterns #params)
]

{ #category : #generated }
RustFunctionNode >> compositeTokenVariables [
	^ #(#colons #commas #bars #ellipsises)
]

{ #category : #generated }
RustFunctionNode >> constToken [
	^ constToken
]

{ #category : #generated }
RustFunctionNode >> constToken: aSmaCCToken [
	constToken := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> defaultToken [
	^ defaultToken
]

{ #category : #generated }
RustFunctionNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
RustFunctionNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
RustFunctionNode >> externToken [
	^ externToken
]

{ #category : #generated }
RustFunctionNode >> externToken: aSmaCCToken [
	externToken := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> fnToken [
	^ fnToken
]

{ #category : #generated }
RustFunctionNode >> fnToken: aSmaCCToken [
	fnToken := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> gt [
	^ gt
]

{ #category : #generated }
RustFunctionNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustFunctionNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	attrs := OrderedCollection new: 2.
	colons := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
]

{ #category : #generated }
RustFunctionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustFunctionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> lifetime [
	^ lifetime
]

{ #category : #generated }
RustFunctionNode >> lifetime: aSmaCCToken [
	lifetime := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> lt [
	^ lt
]

{ #category : #generated }
RustFunctionNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> mutToken [
	^ mutToken
]

{ #category : #generated }
RustFunctionNode >> mutToken: aSmaCCToken [
	mutToken := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> name [
	^ name
]

{ #category : #generated }
RustFunctionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> nodeVariables [
	^ #(#block #where #visibility)
]

{ #category : #generated }
RustFunctionNode >> params [
	^ params
]

{ #category : #generated }
RustFunctionNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
RustFunctionNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustFunctionNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustFunctionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustFunctionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> selfToken [
	^ selfToken
]

{ #category : #generated }
RustFunctionNode >> selfToken: aSmaCCToken [
	selfToken := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustFunctionNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> tokenVariables [
	^ #(#externToken #abi #unsafeToken #asyncToken #constToken #defaultToken #fnToken #name #leftParen #rightParen #semicolon #arrow #selfToken #mutToken #amp #lifetime #lt #gt)
]

{ #category : #generated }
RustFunctionNode >> types [
	^ types
]

{ #category : #generated }
RustFunctionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]

{ #category : #generated }
RustFunctionNode >> unsafeToken [
	^ unsafeToken
]

{ #category : #generated }
RustFunctionNode >> unsafeToken: aSmaCCToken [
	unsafeToken := aSmaCCToken
]

{ #category : #generated }
RustFunctionNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustFunctionNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]

{ #category : #generated }
RustFunctionNode >> where [
	^ where
]

{ #category : #generated }
RustFunctionNode >> where: aRustWhereClauseNode [
	self where notNil ifTrue: [ self where parent: nil ].
	where := aRustWhereClauseNode.
	self where notNil ifTrue: [ self where parent: self ]
]
