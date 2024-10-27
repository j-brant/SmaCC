Class {
	#name : #ElixirCallArgsNoParensKwExprNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'key',
		'value'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirCallArgsNoParensKwExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallArgsNoParensKwExpr: self
]

{ #category : #generated }
ElixirCallArgsNoParensKwExprNode >> key [
	^ key
]

{ #category : #generated }
ElixirCallArgsNoParensKwExprNode >> key: aSmaCCToken [
	key := aSmaCCToken
]

{ #category : #generated }
ElixirCallArgsNoParensKwExprNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
ElixirCallArgsNoParensKwExprNode >> tokenVariables [
	^ #(#key)
]

{ #category : #generated }
ElixirCallArgsNoParensKwExprNode >> value [
	^ value
]

{ #category : #generated }
ElixirCallArgsNoParensKwExprNode >> value: anElixirProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := anElixirProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]
