Class {
	#name : #ElixirAssocUpdateNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'expression',
		'pipe',
		'associatoin',
		'association'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirAssocUpdateNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssocUpdate: self
]

{ #category : #generated }
ElixirAssocUpdateNode >> association [
	^ association
]

{ #category : #generated }
ElixirAssocUpdateNode >> association: anElixirAssocExprNode [
	self association notNil ifTrue: [ self association parent: nil ].
	association := anElixirAssocExprNode.
	self association notNil ifTrue: [ self association parent: self ]
]

{ #category : #generated }
ElixirAssocUpdateNode >> associatoin [
	^ associatoin
]

{ #category : #generated }
ElixirAssocUpdateNode >> associatoin: anElixirAssocExprNode [
	self associatoin notNil ifTrue: [ self associatoin parent: nil ].
	associatoin := anElixirAssocExprNode.
	self associatoin notNil ifTrue: [ self associatoin parent: self ]
]

{ #category : #generated }
ElixirAssocUpdateNode >> expression [
	^ expression
]

{ #category : #generated }
ElixirAssocUpdateNode >> expression: anElixirProgramNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirProgramNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
ElixirAssocUpdateNode >> nodeVariables [
	^ #(#expression #associatoin #association)
]

{ #category : #generated }
ElixirAssocUpdateNode >> pipe [
	^ pipe
]

{ #category : #generated }
ElixirAssocUpdateNode >> pipe: aSmaCCToken [
	pipe := aSmaCCToken
]

{ #category : #generated }
ElixirAssocUpdateNode >> tokenVariables [
	^ #(#pipe)
]
