Class {
	#name : #ElixirCallArgsParensBaseNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'args',
		'coms'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirCallArgsParensBaseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallArgsParensBase: self
]

{ #category : #generated }
ElixirCallArgsParensBaseNode >> args [
	^ args
]

{ #category : #generated }
ElixirCallArgsParensBaseNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
ElixirCallArgsParensBaseNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : #generated }
ElixirCallArgsParensBaseNode >> compositeTokenVariables [
	^ #(#coms)
]

{ #category : #generated }
ElixirCallArgsParensBaseNode >> coms [
	^ coms
]

{ #category : #generated }
ElixirCallArgsParensBaseNode >> coms: anOrderedCollection [
	coms := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
ElixirCallArgsParensBaseNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
	coms := OrderedCollection new: 2.
]
