Class {
	#name : 'ElixirInterpolatedStringNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'parts',
		'expressions'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirInterpolatedStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInterpolatedString: self
]

{ #category : 'generated' }
ElixirInterpolatedStringNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : 'generated' }
ElixirInterpolatedStringNode >> compositeTokenVariables [
	^ #(#parts)
]

{ #category : 'generated' }
ElixirInterpolatedStringNode >> expressions [
	^ expressions
]

{ #category : 'generated' }
ElixirInterpolatedStringNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : 'generated-initialize-release' }
ElixirInterpolatedStringNode >> initialize [
	super initialize.
	parts := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
]

{ #category : 'generated' }
ElixirInterpolatedStringNode >> parts [
	^ parts
]

{ #category : 'generated' }
ElixirInterpolatedStringNode >> parts: anOrderedCollection [
	parts := anOrderedCollection
]
