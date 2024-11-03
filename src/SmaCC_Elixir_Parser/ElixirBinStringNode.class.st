Class {
	#name : #ElixirBinStringNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'string'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirBinStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBinString: self
]

{ #category : #generated }
ElixirBinStringNode >> string [
	^ string
]

{ #category : #generated }
ElixirBinStringNode >> string: aSmaCCToken [
	string := aSmaCCToken
]

{ #category : #generated }
ElixirBinStringNode >> tokenVariables [
	^ #(#string)
]
