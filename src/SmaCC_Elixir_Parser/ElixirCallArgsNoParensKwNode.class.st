Class {
	#name : #ElixirCallArgsNoParensKwNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'kws',
		'coms'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirCallArgsNoParensKwNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallArgsNoParensKw: self
]

{ #category : #generated }
ElixirCallArgsNoParensKwNode >> compositeNodeVariables [
	^ #(#kws)
]

{ #category : #generated }
ElixirCallArgsNoParensKwNode >> compositeTokenVariables [
	^ #(#coms)
]

{ #category : #generated }
ElixirCallArgsNoParensKwNode >> coms [
	^ coms
]

{ #category : #generated }
ElixirCallArgsNoParensKwNode >> coms: anOrderedCollection [
	coms := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
ElixirCallArgsNoParensKwNode >> initialize [
	super initialize.
	kws := OrderedCollection new: 2.
	coms := OrderedCollection new: 2.
]

{ #category : #generated }
ElixirCallArgsNoParensKwNode >> kws [
	^ kws
]

{ #category : #generated }
ElixirCallArgsNoParensKwNode >> kws: anOrderedCollection [
	self setParents: self kws to: nil.
	kws := anOrderedCollection.
	self setParents: self kws to: self
]
