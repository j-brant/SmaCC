Class {
	#name : #ElixirTrueNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'_true'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirTrueNode >> _true [
	^ _true
]

{ #category : #generated }
ElixirTrueNode >> _true: aSmaCCToken [
	_true := aSmaCCToken
]

{ #category : #generated }
ElixirTrueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTrue: self
]

{ #category : #generated }
ElixirTrueNode >> tokenVariables [
	^ #(#_true)
]
