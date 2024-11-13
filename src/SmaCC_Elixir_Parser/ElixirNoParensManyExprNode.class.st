Class {
	#name : #ElixirNoParensManyExprNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'identifier',
		'expression'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirNoParensManyExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNoParensManyExpr: self
]

{ #category : #generated }
ElixirNoParensManyExprNode >> expression [
	^ expression
]

{ #category : #generated }
ElixirNoParensManyExprNode >> expression: anElixirCallArgsNoParensManyStrictNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirCallArgsNoParensManyStrictNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
ElixirNoParensManyExprNode >> identifier [
	^ identifier
]

{ #category : #generated }
ElixirNoParensManyExprNode >> identifier: anElixirProgramNode [
	self identifier notNil ifTrue: [ self identifier parent: nil ].
	identifier := anElixirProgramNode.
	self identifier notNil ifTrue: [ self identifier parent: self ]
]

{ #category : #generated }
ElixirNoParensManyExprNode >> nodeVariables [
	^ #(#identifier #expression)
]
