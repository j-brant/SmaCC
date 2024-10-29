Class {
	#name : #ElixirDotCallIdentifierNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'identifier',
		'op'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirDotCallIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDotCallIdentifier: self
]

{ #category : #generated }
ElixirDotCallIdentifierNode >> identifier [
	^ identifier
]

{ #category : #generated }
ElixirDotCallIdentifierNode >> identifier: anElixirProgramNode [
	self identifier notNil ifTrue: [ self identifier parent: nil ].
	identifier := anElixirProgramNode.
	self identifier notNil ifTrue: [ self identifier parent: self ]
]

{ #category : #generated }
ElixirDotCallIdentifierNode >> nodeVariables [
	^ #(#identifier)
]

{ #category : #generated }
ElixirDotCallIdentifierNode >> op [
	^ op
]

{ #category : #generated }
ElixirDotCallIdentifierNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
ElixirDotCallIdentifierNode >> tokenVariables [
	^ #(#op)
]
