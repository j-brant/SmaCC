Class {
	#name : 'ElixirDotOpIdentifierNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'ops',
		'expressions',
		'identifier',
		'expression',
		'op'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirDotOpIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDotOpIdentifier: self
]

{ #category : 'generated' }
ElixirDotOpIdentifierNode >> expression [

	^ expression
]

{ #category : 'generated' }
ElixirDotOpIdentifierNode >> expression: anElixirMatchedExprNode [

	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirMatchedExprNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
ElixirDotOpIdentifierNode >> identifier [
	^ identifier
]

{ #category : 'generated' }
ElixirDotOpIdentifierNode >> identifier: aSmaCCToken [
	identifier := aSmaCCToken
]

{ #category : 'generated' }
ElixirDotOpIdentifierNode >> nodeVariables [

	^ #( #expression )
]

{ #category : 'generated' }
ElixirDotOpIdentifierNode >> op [

	^ op
]

{ #category : 'generated' }
ElixirDotOpIdentifierNode >> op: aSmaCCToken [

	op := aSmaCCToken
]

{ #category : 'generated' }
ElixirDotOpIdentifierNode >> tokenVariables [

	^ #( #identifier #op )
]
