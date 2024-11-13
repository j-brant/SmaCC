Class {
	#name : #ElixirDotBracketIdentifierNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'identifier',
		'expression',
		'op'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirDotBracketIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDotBracketIdentifier: self
]

{ #category : #generated }
ElixirDotBracketIdentifierNode >> expression [
	^ expression
]

{ #category : #generated }
ElixirDotBracketIdentifierNode >> expression: anElixirMatchedExprNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirMatchedExprNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
ElixirDotBracketIdentifierNode >> identifier [
	^ identifier
]

{ #category : #generated }
ElixirDotBracketIdentifierNode >> identifier: aSmaCCToken [
	identifier := aSmaCCToken
]

{ #category : #generated }
ElixirDotBracketIdentifierNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
ElixirDotBracketIdentifierNode >> op [
	^ op
]

{ #category : #generated }
ElixirDotBracketIdentifierNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
ElixirDotBracketIdentifierNode >> tokenVariables [
	^ #(#identifier #op)
]
