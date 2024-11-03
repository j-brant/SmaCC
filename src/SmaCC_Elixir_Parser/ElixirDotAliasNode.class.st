Class {
	#name : #ElixirDotAliasNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'alias',
		'expression',
		'op',
		'leftCurly',
		'rightCurly'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirDotAliasNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDotAlias: self
]

{ #category : #generated }
ElixirDotAliasNode >> alias [
	^ alias
]

{ #category : #generated }
ElixirDotAliasNode >> alias: anObject [
	self setParent: self alias to: nil.
	alias := anObject.
	self setParent: self alias to: self
]

{ #category : #generated }
ElixirDotAliasNode >> expression [
	^ expression
]

{ #category : #generated }
ElixirDotAliasNode >> expression: anElixirMatchedExprNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirMatchedExprNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
ElixirDotAliasNode >> leftCurly [
	^ leftCurly
]

{ #category : #generated }
ElixirDotAliasNode >> leftCurly: aSmaCCToken [
	leftCurly := aSmaCCToken
]

{ #category : #generated }
ElixirDotAliasNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
ElixirDotAliasNode >> op [
	^ op
]

{ #category : #generated }
ElixirDotAliasNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
ElixirDotAliasNode >> otherVariables [
	^ #(#alias)
]

{ #category : #generated }
ElixirDotAliasNode >> rightCurly [
	^ rightCurly
]

{ #category : #generated }
ElixirDotAliasNode >> rightCurly: aSmaCCToken [
	rightCurly := aSmaCCToken
]

{ #category : #generated }
ElixirDotAliasNode >> tokenVariables [
	^ #(#op #leftCurly #rightCurly)
]
