Class {
	#name : 'ElixirInterpolatedAtomNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'parts',
		'expressions'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirInterpolatedAtomNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInterpolatedAtom: self
]

{ #category : 'generated' }
ElixirInterpolatedAtomNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : 'generated' }
ElixirInterpolatedAtomNode >> compositeTokenVariables [
	^ #(#parts)
]

{ #category : 'generated' }
ElixirInterpolatedAtomNode >> expressions [
	^ expressions
]

{ #category : 'generated' }
ElixirInterpolatedAtomNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : 'generated-initialize-release' }
ElixirInterpolatedAtomNode >> initialize [
	super initialize.
	parts := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
]

{ #category : 'generated' }
ElixirInterpolatedAtomNode >> parts [
	^ parts
]

{ #category : 'generated' }
ElixirInterpolatedAtomNode >> parts: anOrderedCollection [
	parts := anOrderedCollection
]
