Class {
	#name : 'ElixirAccessExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'leftParen',
		'stab',
		'rightParen',
		'semi',
		'semis'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirAccessExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAccessExpr: self
]

{ #category : 'generated' }
ElixirAccessExprNode >> compositeTokenVariables [

	^ #( #semis )
]

{ #category : 'generated-initialize-release' }
ElixirAccessExprNode >> initialize [
	super initialize.
	semis := OrderedCollection new: 2.
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
ElixirAccessExprNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
ElixirAccessExprNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
ElixirAccessExprNode >> semis [

	^ semis
]

{ #category : 'generated' }
ElixirAccessExprNode >> semis: anOrderedCollection [

	semis := anOrderedCollection
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

	^ #( #leftParen #rightParen )
]
