Class {
	#name : #ElixirNumberNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'int',
		'float',
		'char'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirNumberNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNumber: self
]

{ #category : #generated }
ElixirNumberNode >> char [
	^ char
]

{ #category : #generated }
ElixirNumberNode >> char: aSmaCCToken [
	char := aSmaCCToken
]

{ #category : #generated }
ElixirNumberNode >> float [
	^ float
]

{ #category : #generated }
ElixirNumberNode >> float: aSmaCCToken [
	float := aSmaCCToken
]

{ #category : #generated }
ElixirNumberNode >> int [
	^ int
]

{ #category : #generated }
ElixirNumberNode >> int: aSmaCCToken [
	int := aSmaCCToken
]

{ #category : #generated }
ElixirNumberNode >> tokenVariables [
	^ #(#int #float #char)
]
