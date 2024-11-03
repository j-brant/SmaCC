Class {
	#name : 'ElixirAssocExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'key',
		'op',
		'value'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirAssocExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssocExpr: self
]

{ #category : 'generated' }
ElixirAssocExprNode >> key [
	^ key
]

{ #category : 'generated' }
ElixirAssocExprNode >> key: anElixirProgramNode [
	self key notNil ifTrue: [ self key parent: nil ].
	key := anElixirProgramNode.
	self key notNil ifTrue: [ self key parent: self ]
]

{ #category : 'generated' }
ElixirAssocExprNode >> nodeVariables [
	^ #(#key #value)
]

{ #category : 'generated' }
ElixirAssocExprNode >> op [
	^ op
]

{ #category : 'generated' }
ElixirAssocExprNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : 'generated' }
ElixirAssocExprNode >> tokenVariables [
	^ #(#op)
]

{ #category : 'generated' }
ElixirAssocExprNode >> value [
	^ value
]

{ #category : 'generated' }
ElixirAssocExprNode >> value: anElixirProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := anElixirProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]
