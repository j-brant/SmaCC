Class {
	#name : #ElixirCallArgsNoParensManyStrictNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'args',
		'leftParen',
		'rightParen'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirCallArgsNoParensManyStrictNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallArgsNoParensManyStrict: self
]

{ #category : #generated }
ElixirCallArgsNoParensManyStrictNode >> args [
	^ args
]

{ #category : #generated }
ElixirCallArgsNoParensManyStrictNode >> args: anElixirProgramNode [
	self args notNil ifTrue: [ self args parent: nil ].
	args := anElixirProgramNode.
	self args notNil ifTrue: [ self args parent: self ]
]

{ #category : #generated }
ElixirCallArgsNoParensManyStrictNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
ElixirCallArgsNoParensManyStrictNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
ElixirCallArgsNoParensManyStrictNode >> nodeVariables [
	^ #(#args)
]

{ #category : #generated }
ElixirCallArgsNoParensManyStrictNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
ElixirCallArgsNoParensManyStrictNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
ElixirCallArgsNoParensManyStrictNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
