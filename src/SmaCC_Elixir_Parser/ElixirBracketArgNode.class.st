Class {
	#name : 'ElixirBracketArgNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'leftBracket',
		'rightBracket',
		'com',
		'arg'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirBracketArgNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBracketArg: self
]

{ #category : 'generated' }
ElixirBracketArgNode >> arg [
	^ arg
]

{ #category : 'generated' }
ElixirBracketArgNode >> arg: anElixirBracketValuesNode [

	self arg notNil ifTrue: [ self arg parent: nil ].
	arg := anElixirBracketValuesNode.
	self arg notNil ifTrue: [ self arg parent: self ]
]

{ #category : 'generated' }
ElixirBracketArgNode >> com [
	^ com
]

{ #category : 'generated' }
ElixirBracketArgNode >> com: aSmaCCToken [
	com := aSmaCCToken
]

{ #category : 'generated' }
ElixirBracketArgNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
ElixirBracketArgNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
ElixirBracketArgNode >> nodeVariables [
	^ #(#arg)
]

{ #category : 'generated' }
ElixirBracketArgNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
ElixirBracketArgNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : 'generated' }
ElixirBracketArgNode >> tokenVariables [
	^ #(#leftBracket #rightBracket #com)
]
