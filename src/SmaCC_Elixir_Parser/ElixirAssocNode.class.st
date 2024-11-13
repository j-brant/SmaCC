Class {
	#name : #ElixirAssocNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'assoc',
		'com'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirAssocNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssoc: self
]

{ #category : #generated }
ElixirAssocNode >> assoc [
	^ assoc
]

{ #category : #generated }
ElixirAssocNode >> assoc: anElixirAssocBaseNode [
	self assoc notNil ifTrue: [ self assoc parent: nil ].
	assoc := anElixirAssocBaseNode.
	self assoc notNil ifTrue: [ self assoc parent: self ]
]

{ #category : #generated }
ElixirAssocNode >> com [
	^ com
]

{ #category : #generated }
ElixirAssocNode >> com: aSmaCCToken [
	com := aSmaCCToken
]

{ #category : #generated }
ElixirAssocNode >> nodeVariables [
	^ #(#assoc)
]

{ #category : #generated }
ElixirAssocNode >> tokenVariables [
	^ #(#com)
]
