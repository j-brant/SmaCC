Class {
	#name : #ElixirBracketAtExprNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'op',
		'identifier',
		'arg'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirBracketAtExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBracketAtExpr: self
]

{ #category : #generated }
ElixirBracketAtExprNode >> arg [
	^ arg
]

{ #category : #generated }
ElixirBracketAtExprNode >> arg: anElixirBracketArgNode [
	self arg notNil ifTrue: [ self arg parent: nil ].
	arg := anElixirBracketArgNode.
	self arg notNil ifTrue: [ self arg parent: self ]
]

{ #category : #generated }
ElixirBracketAtExprNode >> identifier [
	^ identifier
]

{ #category : #generated }
ElixirBracketAtExprNode >> identifier: anElixirProgramNode [
	self identifier notNil ifTrue: [ self identifier parent: nil ].
	identifier := anElixirProgramNode.
	self identifier notNil ifTrue: [ self identifier parent: self ]
]

{ #category : #generated }
ElixirBracketAtExprNode >> nodeVariables [
	^ #(#identifier #arg)
]

{ #category : #generated }
ElixirBracketAtExprNode >> op [
	^ op
]

{ #category : #generated }
ElixirBracketAtExprNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
ElixirBracketAtExprNode >> tokenVariables [
	^ #(#op)
]
