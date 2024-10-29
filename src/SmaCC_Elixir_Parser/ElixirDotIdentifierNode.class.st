Class {
	#name : #ElixirDotIdentifierNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'identifier',
		'expression',
		'dot'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirDotIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDotIdentifier: self
]

{ #category : #generated }
ElixirDotIdentifierNode >> dot [
	^ dot
]

{ #category : #generated }
ElixirDotIdentifierNode >> dot: aSmaCCToken [
	dot := aSmaCCToken
]

{ #category : #generated }
ElixirDotIdentifierNode >> expression [
	^ expression
]

{ #category : #generated }
ElixirDotIdentifierNode >> expression: anElixirMatchedExprNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirMatchedExprNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
ElixirDotIdentifierNode >> identifier [
	^ identifier
]

{ #category : #generated }
ElixirDotIdentifierNode >> identifier: aSmaCCToken [
	identifier := aSmaCCToken
]

{ #category : #generated }
ElixirDotIdentifierNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
ElixirDotIdentifierNode >> tokenVariables [
	^ #(#identifier #dot)
]
