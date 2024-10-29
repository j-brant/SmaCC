Class {
	#name : #ElixirBracketValuesNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'values',
		'coms'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirBracketValuesNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBracketValues: self
]

{ #category : #generated }
ElixirBracketValuesNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
ElixirBracketValuesNode >> compositeTokenVariables [
	^ #(#coms)
]

{ #category : #generated }
ElixirBracketValuesNode >> coms [
	^ coms
]

{ #category : #generated }
ElixirBracketValuesNode >> coms: anOrderedCollection [
	coms := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
ElixirBracketValuesNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	coms := OrderedCollection new: 2.
]

{ #category : #generated }
ElixirBracketValuesNode >> values [
	^ values
]

{ #category : #generated }
ElixirBracketValuesNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
