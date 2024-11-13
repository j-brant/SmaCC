Class {
	#name : #ElixirAssocUpdateKwNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'expression',
		'pipe',
		'kw'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirAssocUpdateKwNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssocUpdateKw: self
]

{ #category : #generated }
ElixirAssocUpdateKwNode >> expression [
	^ expression
]

{ #category : #generated }
ElixirAssocUpdateKwNode >> expression: anElixirProgramNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirProgramNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
ElixirAssocUpdateKwNode >> kw [
	^ kw
]

{ #category : #generated }
ElixirAssocUpdateKwNode >> kw: anElixirKwNode [

	self kw notNil ifTrue: [ self kw parent: nil ].
	kw := anElixirKwNode.
	self kw notNil ifTrue: [ self kw parent: self ]
]

{ #category : #generated }
ElixirAssocUpdateKwNode >> nodeVariables [
	^ #(#expression #kw)
]

{ #category : #generated }
ElixirAssocUpdateKwNode >> pipe [
	^ pipe
]

{ #category : #generated }
ElixirAssocUpdateKwNode >> pipe: aSmaCCToken [
	pipe := aSmaCCToken
]

{ #category : #generated }
ElixirAssocUpdateKwNode >> tokenVariables [
	^ #(#pipe)
]
