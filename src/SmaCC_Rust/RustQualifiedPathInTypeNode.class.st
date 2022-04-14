Class {
	#name : #RustQualifiedPathInTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'lt',
		'types',
		'gt',
		'asToken',
		'typePath',
		'separators',
		'names',
		'genericArgses',
		'leftParens',
		'rightParens',
		'arrows',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustQualifiedPathInTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQualifiedPathInType: self
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> arrows [
	^ arrows
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> arrows: anOrderedCollection [
	arrows := anOrderedCollection
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> asToken [
	^ asToken
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> commas [
	^ commas
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> compositeNodeVariables [
	^ #(#types #genericArgses)
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> compositeTokenVariables [
	^ #(#separators #names #leftParens #rightParens #arrows #commas)
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> genericArgses [
	^ genericArgses
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> genericArgses: anOrderedCollection [
	self setParents: self genericArgses to: nil.
	genericArgses := anOrderedCollection.
	self setParents: self genericArgses to: self
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> gt [
	^ gt
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustQualifiedPathInTypeNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	separators := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	genericArgses := OrderedCollection new: 2.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	arrows := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> lt [
	^ lt
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> names [
	^ names
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> nodeVariables [
	^ #(#typePath)
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> separators [
	^ separators
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> separators: anOrderedCollection [
	separators := anOrderedCollection
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> tokenVariables [
	^ #(#lt #gt #asToken)
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> typePath [
	^ typePath
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> typePath: aRustTypePathNode [
	self typePath notNil ifTrue: [ self typePath parent: nil ].
	typePath := aRustTypePathNode.
	self typePath notNil ifTrue: [ self typePath parent: self ]
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> types [
	^ types
]

{ #category : #generated }
RustQualifiedPathInTypeNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
