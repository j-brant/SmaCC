Class {
	#name : #ElixirFnEoeNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'fn',
		'eoe'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirFnEoeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFnEoe: self
]

{ #category : #generated }
ElixirFnEoeNode >> eoe [
	^ eoe
]

{ #category : #generated }
ElixirFnEoeNode >> eoe: aSmaCCToken [
	eoe := aSmaCCToken
]

{ #category : #generated }
ElixirFnEoeNode >> fn [
	^ fn
]

{ #category : #generated }
ElixirFnEoeNode >> fn: aSmaCCToken [
	fn := aSmaCCToken
]

{ #category : #generated }
ElixirFnEoeNode >> tokenVariables [
	^ #(#fn #eoe)
]
