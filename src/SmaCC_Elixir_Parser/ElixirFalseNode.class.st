Class {
	#name : #ElixirFalseNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'_false'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirFalseNode >> _false [
	^ _false
]

{ #category : #generated }
ElixirFalseNode >> _false: aSmaCCToken [
	_false := aSmaCCToken
]

{ #category : #generated }
ElixirFalseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFalse: self
]

{ #category : #generated }
ElixirFalseNode >> tokenVariables [
	^ #(#_false)
]
