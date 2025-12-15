Class {
	#name : 'ElixirUnmatchedOpExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'op',
		'expression'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirUnmatchedOpExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnmatchedOpExpr: self
]

{ #category : 'generated' }
ElixirUnmatchedOpExprNode >> expression [
	^ expression
]

{ #category : 'generated' }
ElixirUnmatchedOpExprNode >> expression: anElixirUnmatchedExprNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirUnmatchedExprNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
ElixirUnmatchedOpExprNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
ElixirUnmatchedOpExprNode >> op [
	^ op
]

{ #category : 'generated' }
ElixirUnmatchedOpExprNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : 'generated' }
ElixirUnmatchedOpExprNode >> tokenVariables [
	^ #(#op)
]
