Class {
	#name : #ElixirNilNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'_nil'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirNilNode >> _nil [
	^ _nil
]

{ #category : #generated }
ElixirNilNode >> _nil: aSmaCCToken [
	_nil := aSmaCCToken
]

{ #category : #generated }
ElixirNilNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNil: self
]

{ #category : #generated }
ElixirNilNode >> tokenVariables [
	^ #(#_nil)
]
