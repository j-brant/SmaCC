Class {
	#name : #ElixirAssocBaseNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'assocs',
		'coms'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirAssocBaseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssocBase: self
]

{ #category : #generated }
ElixirAssocBaseNode >> assocs [
	^ assocs
]

{ #category : #generated }
ElixirAssocBaseNode >> assocs: anOrderedCollection [
	self setParents: self assocs to: nil.
	assocs := anOrderedCollection.
	self setParents: self assocs to: self
]

{ #category : #generated }
ElixirAssocBaseNode >> compositeNodeVariables [
	^ #(#assocs)
]

{ #category : #generated }
ElixirAssocBaseNode >> compositeTokenVariables [
	^ #(#coms)
]

{ #category : #generated }
ElixirAssocBaseNode >> coms [
	^ coms
]

{ #category : #generated }
ElixirAssocBaseNode >> coms: anOrderedCollection [
	coms := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
ElixirAssocBaseNode >> initialize [
	super initialize.
	assocs := OrderedCollection new: 2.
	coms := OrderedCollection new: 2.
]
