Class {
	#name : 'ElixirNoParensExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'expression',
		'expressoin',
		'ops'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirNoParensExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNoParensExpr: self
]

{ #category : 'generated' }
ElixirNoParensExprNode >> compositeTokenVariables [
	^ #(#ops)
]

{ #category : 'generated' }
ElixirNoParensExprNode >> expression [
	^ expression
]

{ #category : 'generated' }
ElixirNoParensExprNode >> expression: anElixirProgramNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirProgramNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
ElixirNoParensExprNode >> expressoin [
	^ expressoin
]

{ #category : 'generated' }
ElixirNoParensExprNode >> expressoin: anElixirNoParensOpExprNode [
	self expressoin notNil ifTrue: [ self expressoin parent: nil ].
	expressoin := anElixirNoParensOpExprNode.
	self expressoin notNil ifTrue: [ self expressoin parent: self ]
]

{ #category : 'generated-initialize-release' }
ElixirNoParensExprNode >> initialize [
	super initialize.
	ops := OrderedCollection new: 2.
]

{ #category : 'generated' }
ElixirNoParensExprNode >> nodeVariables [
	^ #(#expression #expressoin)
]

{ #category : 'generated' }
ElixirNoParensExprNode >> ops [
	^ ops
]

{ #category : 'generated' }
ElixirNoParensExprNode >> ops: anOrderedCollection [
	ops := anOrderedCollection
]
