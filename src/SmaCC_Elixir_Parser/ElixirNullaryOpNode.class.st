Class {
	#name : 'ElixirNullaryOpNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'op'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirNullaryOpNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNullaryOp: self
]

{ #category : 'generated' }
ElixirNullaryOpNode >> op [
	^ op
]

{ #category : 'generated' }
ElixirNullaryOpNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : 'generated' }
ElixirNullaryOpNode >> tokenVariables [
	^ #(#op)
]
