Class {
	#name : 'ElixirAccessExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'op',
		'identifier',
		'slash',
		'arity',
		'leftParen',
		'stab',
		'rightParen',
		'semi'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirAccessExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAccessExpr: self
]

{ #category : 'generated' }
ElixirAccessExprNode >> arity [
	^ arity
]

{ #category : 'generated' }
ElixirAccessExprNode >> arity: aSmaCCToken [
	arity := aSmaCCToken
]

{ #category : 'generated' }
ElixirAccessExprNode >> identifier [
	^ identifier
]

{ #category : 'generated' }
ElixirAccessExprNode >> identifier: aSmaCCToken [
	identifier := aSmaCCToken
]

{ #category : 'generated' }
ElixirAccessExprNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
ElixirAccessExprNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
ElixirAccessExprNode >> nodeVariables [
	^ #(#stab)
]

{ #category : 'generated' }
ElixirAccessExprNode >> op [
	^ op
]

{ #category : 'generated' }
ElixirAccessExprNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : 'generated' }
ElixirAccessExprNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
ElixirAccessExprNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
ElixirAccessExprNode >> semi [
	^ semi
]

{ #category : 'generated' }
ElixirAccessExprNode >> semi: aSmaCCToken [
	semi := aSmaCCToken
]

{ #category : 'generated' }
ElixirAccessExprNode >> slash [
	^ slash
]

{ #category : 'generated' }
ElixirAccessExprNode >> slash: aSmaCCToken [
	slash := aSmaCCToken
]

{ #category : 'generated' }
ElixirAccessExprNode >> stab [
	^ stab
]

{ #category : 'generated' }
ElixirAccessExprNode >> stab: anElixirStabNode [
	self stab notNil ifTrue: [ self stab parent: nil ].
	stab := anElixirStabNode.
	self stab notNil ifTrue: [ self stab parent: self ]
]

{ #category : 'generated' }
ElixirAccessExprNode >> tokenVariables [
	^ #(#op #identifier #slash #arity #leftParen #rightParen #semi)
]
