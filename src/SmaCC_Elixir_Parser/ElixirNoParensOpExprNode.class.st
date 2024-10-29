Class {
	#name : #ElixirNoParensOpExprNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'op',
		'expression'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirNoParensOpExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNoParensOpExpr: self
]

{ #category : #generated }
ElixirNoParensOpExprNode >> expression [
	^ expression
]

{ #category : #generated }
ElixirNoParensOpExprNode >> expression: anElixirProgramNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirProgramNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
ElixirNoParensOpExprNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
ElixirNoParensOpExprNode >> op [
	^ op
]

{ #category : #generated }
ElixirNoParensOpExprNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
ElixirNoParensOpExprNode >> tokenVariables [
	^ #(#op)
]
