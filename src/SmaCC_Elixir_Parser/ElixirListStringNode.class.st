Class {
	#name : #ElixirListStringNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'string'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirListStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitListString: self
]

{ #category : #generated }
ElixirListStringNode >> string [
	^ string
]

{ #category : #generated }
ElixirListStringNode >> string: aSmaCCToken [
	string := aSmaCCToken
]

{ #category : #generated }
ElixirListStringNode >> tokenVariables [
	^ #(#string)
]
