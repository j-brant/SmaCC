Class {
	#name : 'ElixirListHeredocNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'string'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirListHeredocNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitListHeredoc: self
]

{ #category : 'generated' }
ElixirListHeredocNode >> string [
	^ string
]

{ #category : 'generated' }
ElixirListHeredocNode >> string: aSmaCCToken [
	string := aSmaCCToken
]

{ #category : 'generated' }
ElixirListHeredocNode >> tokenVariables [
	^ #(#string)
]
