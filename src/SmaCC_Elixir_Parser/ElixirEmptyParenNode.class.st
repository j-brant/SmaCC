Class {
	#name : #ElixirEmptyParenNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'leftParen',
		'close'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirEmptyParenNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEmptyParen: self
]

{ #category : #generated }
ElixirEmptyParenNode >> close [
	^ close
]

{ #category : #generated }
ElixirEmptyParenNode >> close: aSmaCCToken [
	close := aSmaCCToken
]

{ #category : #generated }
ElixirEmptyParenNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
ElixirEmptyParenNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
ElixirEmptyParenNode >> tokenVariables [
	^ #(#leftParen #close)
]
