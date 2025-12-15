Class {
	#name : 'ElixirNoParensOneAmbigExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'identifier',
		'expression'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirNoParensOneAmbigExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNoParensOneAmbigExpr: self
]

{ #category : 'generated' }
ElixirNoParensOneAmbigExprNode >> expression [
	^ expression
]

{ #category : 'generated' }
ElixirNoParensOneAmbigExprNode >> expression: anElixirNoParensExprNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirNoParensExprNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
ElixirNoParensOneAmbigExprNode >> identifier [
	^ identifier
]

{ #category : 'generated' }
ElixirNoParensOneAmbigExprNode >> identifier: anElixirProgramNode [
	self identifier notNil ifTrue: [ self identifier parent: nil ].
	identifier := anElixirProgramNode.
	self identifier notNil ifTrue: [ self identifier parent: self ]
]

{ #category : 'generated' }
ElixirNoParensOneAmbigExprNode >> nodeVariables [
	^ #(#identifier #expression)
]
