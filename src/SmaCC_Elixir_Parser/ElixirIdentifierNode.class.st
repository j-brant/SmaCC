Class {
	#name : 'ElixirIdentifierNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'identifier'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifier: self
]

{ #category : 'generated' }
ElixirIdentifierNode >> identifier [
	^ identifier
]

{ #category : 'generated' }
ElixirIdentifierNode >> identifier: aSmaCCToken [
	identifier := aSmaCCToken
]

{ #category : 'generated' }
ElixirIdentifierNode >> tokenVariables [
	^ #(#identifier)
]
