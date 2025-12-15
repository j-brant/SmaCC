Class {
	#name : 'ElixirDotDoIdentifierNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'identifier',
		'expression',
		'op'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirDotDoIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDotDoIdentifier: self
]

{ #category : 'generated' }
ElixirDotDoIdentifierNode >> expression [
	^ expression
]

{ #category : 'generated' }
ElixirDotDoIdentifierNode >> expression: anElixirMatchedExprNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirMatchedExprNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
ElixirDotDoIdentifierNode >> identifier [
	^ identifier
]

{ #category : 'generated' }
ElixirDotDoIdentifierNode >> identifier: aSmaCCToken [
	identifier := aSmaCCToken
]

{ #category : 'generated' }
ElixirDotDoIdentifierNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
ElixirDotDoIdentifierNode >> op [
	^ op
]

{ #category : 'generated' }
ElixirDotDoIdentifierNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : 'generated' }
ElixirDotDoIdentifierNode >> tokenVariables [
	^ #(#identifier #op)
]
