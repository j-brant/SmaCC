Class {
	#name : #ElixirDotOpIdentifierNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'ops',
		'expressions',
		'identifier'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirDotOpIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDotOpIdentifier: self
]

{ #category : #generated }
ElixirDotOpIdentifierNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
ElixirDotOpIdentifierNode >> compositeTokenVariables [
	^ #(#ops)
]

{ #category : #generated }
ElixirDotOpIdentifierNode >> expressions [
	^ expressions
]

{ #category : #generated }
ElixirDotOpIdentifierNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #generated }
ElixirDotOpIdentifierNode >> identifier [
	^ identifier
]

{ #category : #generated }
ElixirDotOpIdentifierNode >> identifier: aSmaCCToken [
	identifier := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
ElixirDotOpIdentifierNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	ops := OrderedCollection new: 2.
]

{ #category : #generated }
ElixirDotOpIdentifierNode >> ops [
	^ ops
]

{ #category : #generated }
ElixirDotOpIdentifierNode >> ops: anOrderedCollection [
	ops := anOrderedCollection
]

{ #category : #generated }
ElixirDotOpIdentifierNode >> tokenVariables [
	^ #(#identifier)
]
