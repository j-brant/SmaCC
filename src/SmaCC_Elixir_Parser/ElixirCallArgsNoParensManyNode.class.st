Class {
	#name : #ElixirCallArgsNoParensManyNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'expression',
		'com',
		'args'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirCallArgsNoParensManyNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallArgsNoParensMany: self
]

{ #category : #generated }
ElixirCallArgsNoParensManyNode >> args [
	^ args
]

{ #category : #generated }
ElixirCallArgsNoParensManyNode >> args: anElixirCallArgsNoParensKwNode [
	self args notNil ifTrue: [ self args parent: nil ].
	args := anElixirCallArgsNoParensKwNode.
	self args notNil ifTrue: [ self args parent: self ]
]

{ #category : #generated }
ElixirCallArgsNoParensManyNode >> com [
	^ com
]

{ #category : #generated }
ElixirCallArgsNoParensManyNode >> com: aSmaCCToken [
	com := aSmaCCToken
]

{ #category : #generated }
ElixirCallArgsNoParensManyNode >> expression [
	^ expression
]

{ #category : #generated }
ElixirCallArgsNoParensManyNode >> expression: anElixirProgramNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirProgramNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
ElixirCallArgsNoParensManyNode >> nodeVariables [
	^ #(#expression #args)
]

{ #category : #generated }
ElixirCallArgsNoParensManyNode >> tokenVariables [
	^ #(#com)
]
