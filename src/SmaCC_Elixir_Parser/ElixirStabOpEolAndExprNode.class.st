Class {
	#name : #ElixirStabOpEolAndExprNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'op',
		'body'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirStabOpEolAndExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStabOpEolAndExpr: self
]

{ #category : #generated }
ElixirStabOpEolAndExprNode >> body [
	^ body
]

{ #category : #generated }
ElixirStabOpEolAndExprNode >> body: anElixirProgramNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := anElixirProgramNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : #generated }
ElixirStabOpEolAndExprNode >> nodeVariables [
	^ #(#body)
]

{ #category : #generated }
ElixirStabOpEolAndExprNode >> op [
	^ op
]

{ #category : #generated }
ElixirStabOpEolAndExprNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
ElixirStabOpEolAndExprNode >> tokenVariables [
	^ #(#op)
]
