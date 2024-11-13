Class {
	#name : #ElixirContainerArgsBaseNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'expressions',
		'coms'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirContainerArgsBaseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitContainerArgsBase: self
]

{ #category : #generated }
ElixirContainerArgsBaseNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
ElixirContainerArgsBaseNode >> compositeTokenVariables [
	^ #(#coms)
]

{ #category : #generated }
ElixirContainerArgsBaseNode >> coms [
	^ coms
]

{ #category : #generated }
ElixirContainerArgsBaseNode >> coms: anOrderedCollection [
	coms := anOrderedCollection
]

{ #category : #generated }
ElixirContainerArgsBaseNode >> expressions [
	^ expressions
]

{ #category : #generated }
ElixirContainerArgsBaseNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
ElixirContainerArgsBaseNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	coms := OrderedCollection new: 2.
]
