Class {
	#name : #ElixirKwBaseNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'keies',
		'values',
		'coms'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirKwBaseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitKwBase: self
]

{ #category : #generated }
ElixirKwBaseNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
ElixirKwBaseNode >> compositeTokenVariables [
	^ #(#keies #coms)
]

{ #category : #generated }
ElixirKwBaseNode >> coms [
	^ coms
]

{ #category : #generated }
ElixirKwBaseNode >> coms: anOrderedCollection [
	coms := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
ElixirKwBaseNode >> initialize [
	super initialize.
	keies := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	coms := OrderedCollection new: 2.
]

{ #category : #generated }
ElixirKwBaseNode >> keies [
	^ keies
]

{ #category : #generated }
ElixirKwBaseNode >> keies: anOrderedCollection [
	keies := anOrderedCollection
]

{ #category : #generated }
ElixirKwBaseNode >> values [
	^ values
]

{ #category : #generated }
ElixirKwBaseNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
