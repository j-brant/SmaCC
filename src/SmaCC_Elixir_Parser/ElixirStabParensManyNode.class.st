Class {
	#name : #ElixirStabParensManyNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'leftParen',
		'args',
		'rightParen'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirStabParensManyNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStabParensMany: self
]

{ #category : #generated }
ElixirStabParensManyNode >> args [
	^ args
]

{ #category : #generated }
ElixirStabParensManyNode >> args: anElixirProgramNode [
	self args notNil ifTrue: [ self args parent: nil ].
	args := anElixirProgramNode.
	self args notNil ifTrue: [ self args parent: self ]
]

{ #category : #generated }
ElixirStabParensManyNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
ElixirStabParensManyNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
ElixirStabParensManyNode >> nodeVariables [
	^ #(#args)
]

{ #category : #generated }
ElixirStabParensManyNode >> rightParen [

	^ rightParen
]

{ #category : #generated }
ElixirStabParensManyNode >> rightParen: aSmaCCToken [

	rightParen := aSmaCCToken
]

{ #category : #generated }
ElixirStabParensManyNode >> tokenVariables [

	^ #( #leftParen #rightParen )
]
