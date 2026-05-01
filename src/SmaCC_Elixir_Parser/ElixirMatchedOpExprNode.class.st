Class {
	#name : 'ElixirMatchedOpExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'op',
		'expression'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirMatchedOpExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMatchedOpExpr: self
]

{ #category : 'generated' }
ElixirMatchedOpExprNode >> expression [
	^ expression
]

{ #category : 'generated' }
ElixirMatchedOpExprNode >> expression: anElixirMatchedExprNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirMatchedExprNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
ElixirMatchedOpExprNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
ElixirMatchedOpExprNode >> op [
	^ op
]

{ #category : 'generated' }
ElixirMatchedOpExprNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : 'generated' }
ElixirMatchedOpExprNode >> tokenVariables [
	^ #(#op)
]
