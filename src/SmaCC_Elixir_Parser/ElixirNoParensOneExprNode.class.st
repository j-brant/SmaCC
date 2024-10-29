Class {
	#name : #ElixirNoParensOneExprNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'identifier',
		'call'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirNoParensOneExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNoParensOneExpr: self
]

{ #category : #generated }
ElixirNoParensOneExprNode >> call [
	^ call
]

{ #category : #generated }
ElixirNoParensOneExprNode >> call: anElixirProgramNode [
	self call notNil ifTrue: [ self call parent: nil ].
	call := anElixirProgramNode.
	self call notNil ifTrue: [ self call parent: self ]
]

{ #category : #generated }
ElixirNoParensOneExprNode >> identifier [
	^ identifier
]

{ #category : #generated }
ElixirNoParensOneExprNode >> identifier: anElixirProgramNode [
	self identifier notNil ifTrue: [ self identifier parent: nil ].
	identifier := anElixirProgramNode.
	self identifier notNil ifTrue: [ self identifier parent: self ]
]

{ #category : #generated }
ElixirNoParensOneExprNode >> nodeVariables [
	^ #(#identifier #call)
]
