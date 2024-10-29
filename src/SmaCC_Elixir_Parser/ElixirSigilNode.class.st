Class {
	#name : #ElixirSigilNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'sigil'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirSigilNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSigil: self
]

{ #category : #generated }
ElixirSigilNode >> sigil [
	^ sigil
]

{ #category : #generated }
ElixirSigilNode >> sigil: aSmaCCToken [
	sigil := aSmaCCToken
]

{ #category : #generated }
ElixirSigilNode >> tokenVariables [
	^ #(#sigil)
]
