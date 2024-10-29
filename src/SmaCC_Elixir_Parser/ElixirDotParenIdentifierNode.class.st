Class {
	#name : #ElixirDotParenIdentifierNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'identifier',
		'expression',
		'op'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirDotParenIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDotParenIdentifier: self
]

{ #category : #generated }
ElixirDotParenIdentifierNode >> expression [
	^ expression
]

{ #category : #generated }
ElixirDotParenIdentifierNode >> expression: anElixirMatchedExprNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirMatchedExprNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
ElixirDotParenIdentifierNode >> identifier [
	^ identifier
]

{ #category : #generated }
ElixirDotParenIdentifierNode >> identifier: aSmaCCToken [
	identifier := aSmaCCToken
]

{ #category : #generated }
ElixirDotParenIdentifierNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
ElixirDotParenIdentifierNode >> op [
	^ op
]

{ #category : #generated }
ElixirDotParenIdentifierNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
ElixirDotParenIdentifierNode >> tokenVariables [
	^ #(#identifier #op)
]
