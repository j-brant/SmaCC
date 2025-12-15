Class {
	#name : 'ElixirDoEoeNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'do',
		'eoe'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirDoEoeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDoEoe: self
]

{ #category : 'generated' }
ElixirDoEoeNode >> do [
	^ do
]

{ #category : 'generated' }
ElixirDoEoeNode >> do: aSmaCCToken [
	do := aSmaCCToken
]

{ #category : 'generated' }
ElixirDoEoeNode >> eoe [
	^ eoe
]

{ #category : 'generated' }
ElixirDoEoeNode >> eoe: aSmaCCToken [
	eoe := aSmaCCToken
]

{ #category : 'generated' }
ElixirDoEoeNode >> tokenVariables [
	^ #(#do #eoe)
]
