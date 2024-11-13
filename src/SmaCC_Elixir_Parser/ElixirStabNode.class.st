Class {
	#name : #ElixirStabNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'stabs',
		'eoes'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirStabNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStab: self
]

{ #category : #generated }
ElixirStabNode >> compositeNodeVariables [
	^ #(#stabs)
]

{ #category : #generated }
ElixirStabNode >> compositeTokenVariables [
	^ #(#eoes)
]

{ #category : #generated }
ElixirStabNode >> eoes [
	^ eoes
]

{ #category : #generated }
ElixirStabNode >> eoes: anOrderedCollection [
	eoes := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
ElixirStabNode >> initialize [
	super initialize.
	stabs := OrderedCollection new: 2.
	eoes := OrderedCollection new: 2.
]

{ #category : #generated }
ElixirStabNode >> stabs [
	^ stabs
]

{ #category : #generated }
ElixirStabNode >> stabs: anOrderedCollection [
	self setParents: self stabs to: nil.
	stabs := anOrderedCollection.
	self setParents: self stabs to: self
]
