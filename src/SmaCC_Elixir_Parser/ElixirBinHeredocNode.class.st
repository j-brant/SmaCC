Class {
	#name : 'ElixirBinHeredocNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'string'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirBinHeredocNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBinHeredoc: self
]

{ #category : 'generated' }
ElixirBinHeredocNode >> string [
	^ string
]

{ #category : 'generated' }
ElixirBinHeredocNode >> string: aSmaCCToken [
	string := aSmaCCToken
]

{ #category : 'generated' }
ElixirBinHeredocNode >> tokenVariables [
	^ #(#string)
]
