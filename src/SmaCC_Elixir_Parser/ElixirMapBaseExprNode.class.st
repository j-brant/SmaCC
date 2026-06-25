Class {
	#name : 'ElixirMapBaseExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'expression',
		'ops'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirMapBaseExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMapBaseExpr: self
]

{ #category : 'generated' }
ElixirMapBaseExprNode >> compositeTokenVariables [
	^ #(#ops)
]

{ #category : 'generated' }
ElixirMapBaseExprNode >> expression [
	^ expression
]

{ #category : 'generated' }
ElixirMapBaseExprNode >> expression: anElixirSubMatchedExprNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := anElixirSubMatchedExprNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated-initialize-release' }
ElixirMapBaseExprNode >> initialize [
	super initialize.
	ops := OrderedCollection new: 2.
]

{ #category : 'generated' }
ElixirMapBaseExprNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
ElixirMapBaseExprNode >> ops [
	^ ops
]

{ #category : 'generated' }
ElixirMapBaseExprNode >> ops: anOrderedCollection [
	ops := anOrderedCollection
]
