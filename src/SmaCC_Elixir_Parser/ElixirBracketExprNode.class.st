Class {
	#name : 'ElixirBracketExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'identifier',
		'arg'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirBracketExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBracketExpr: self
]

{ #category : 'generated' }
ElixirBracketExprNode >> arg [
	^ arg
]

{ #category : 'generated' }
ElixirBracketExprNode >> arg: anElixirBracketArgNode [
	self arg notNil ifTrue: [ self arg parent: nil ].
	arg := anElixirBracketArgNode.
	self arg notNil ifTrue: [ self arg parent: self ]
]

{ #category : 'generated' }
ElixirBracketExprNode >> identifier [
	^ identifier
]

{ #category : 'generated' }
ElixirBracketExprNode >> identifier: anElixirProgramNode [
	self identifier notNil ifTrue: [ self identifier parent: nil ].
	identifier := anElixirProgramNode.
	self identifier notNil ifTrue: [ self identifier parent: self ]
]

{ #category : 'generated' }
ElixirBracketExprNode >> nodeVariables [
	^ #(#identifier #arg)
]
