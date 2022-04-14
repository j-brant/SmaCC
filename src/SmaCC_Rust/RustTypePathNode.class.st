Class {
	#name : #RustTypePathNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'names',
		'genericArgses',
		'leftParens',
		'rightParens',
		'arrows',
		'types',
		'commas',
		'separators'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTypePathNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypePath: self
]

{ #category : #generated }
RustTypePathNode >> arrows [
	^ arrows
]

{ #category : #generated }
RustTypePathNode >> arrows: anOrderedCollection [
	arrows := anOrderedCollection
]

{ #category : #generated }
RustTypePathNode >> commas [
	^ commas
]

{ #category : #generated }
RustTypePathNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustTypePathNode >> compositeNodeVariables [
	^ #(#genericArgses #types)
]

{ #category : #generated }
RustTypePathNode >> compositeTokenVariables [
	^ #(#names #leftParens #rightParens #arrows #commas #separators)
]

{ #category : #generated }
RustTypePathNode >> genericArgses [
	^ genericArgses
]

{ #category : #generated }
RustTypePathNode >> genericArgses: anOrderedCollection [
	self setParents: self genericArgses to: nil.
	genericArgses := anOrderedCollection.
	self setParents: self genericArgses to: self
]

{ #category : #'generated-initialize-release' }
RustTypePathNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	genericArgses := OrderedCollection new: 2.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	arrows := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	separators := OrderedCollection new: 2.
]

{ #category : #generated }
RustTypePathNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
RustTypePathNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
RustTypePathNode >> names [
	^ names
]

{ #category : #generated }
RustTypePathNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
RustTypePathNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
RustTypePathNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
RustTypePathNode >> separators [
	^ separators
]

{ #category : #generated }
RustTypePathNode >> separators: anOrderedCollection [
	separators := anOrderedCollection
]

{ #category : #generated }
RustTypePathNode >> types [
	^ types
]

{ #category : #generated }
RustTypePathNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
