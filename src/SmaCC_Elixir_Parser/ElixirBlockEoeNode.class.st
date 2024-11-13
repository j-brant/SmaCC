Class {
	#name : #ElixirBlockEoeNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'identifier',
		'eoe'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirBlockEoeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBlockEoe: self
]

{ #category : #generated }
ElixirBlockEoeNode >> eoe [
	^ eoe
]

{ #category : #generated }
ElixirBlockEoeNode >> eoe: aSmaCCToken [
	eoe := aSmaCCToken
]

{ #category : #generated }
ElixirBlockEoeNode >> identifier [
	^ identifier
]

{ #category : #generated }
ElixirBlockEoeNode >> identifier: aSmaCCToken [
	identifier := aSmaCCToken
]

{ #category : #generated }
ElixirBlockEoeNode >> tokenVariables [
	^ #(#identifier #eoe)
]
