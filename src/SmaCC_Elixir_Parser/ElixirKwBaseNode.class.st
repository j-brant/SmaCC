Class {
	#name : 'ElixirKwBaseNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'keys',
		'values',
		'coms'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirKwBaseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitKwBase: self
]

{ #category : 'generated' }
ElixirKwBaseNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : 'generated' }
ElixirKwBaseNode >> compositeTokenVariables [
	^ #(#keys #coms)
]

{ #category : 'generated' }
ElixirKwBaseNode >> coms [
	^ coms
]

{ #category : 'generated' }
ElixirKwBaseNode >> coms: anOrderedCollection [
	coms := anOrderedCollection
]

{ #category : 'generated-initialize-release' }
ElixirKwBaseNode >> initialize [
	super initialize.
	keys := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	coms := OrderedCollection new: 2.
]

{ #category : 'generated' }
ElixirKwBaseNode >> keys [
	^ keys
]

{ #category : 'generated' }
ElixirKwBaseNode >> keys: anOrderedCollection [
	keys := anOrderedCollection
]

{ #category : 'generated' }
ElixirKwBaseNode >> values [
	^ values
]

{ #category : 'generated' }
ElixirKwBaseNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
