Class {
	#name : #ElixirAtomNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'atom'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirAtomNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAtom: self
]

{ #category : #generated }
ElixirAtomNode >> atom [
	^ atom
]

{ #category : #generated }
ElixirAtomNode >> atom: aSmaCCToken [
	atom := aSmaCCToken
]

{ #category : #generated }
ElixirAtomNode >> tokenVariables [
	^ #(#atom)
]
