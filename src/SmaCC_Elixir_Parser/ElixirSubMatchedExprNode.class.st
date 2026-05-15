Class {
	#name : 'ElixirSubMatchedExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'expression',
		'identifier'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirSubMatchedExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubMatchedExpr: self
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> expression [
	^ expression
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> expression: anElixirProgramNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirProgramNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> identifier [
	^ identifier
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> identifier: aSmaCCToken [
	identifier := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> tokenVariables [
	^ #(#identifier)
]
