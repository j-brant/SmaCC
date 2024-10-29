Class {
	#name : #ElixirStructExprNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'identifier',
		'ops'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirStructExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStructExpr: self
]

{ #category : #generated }
ElixirStructExprNode >> compositeTokenVariables [
	^ #(#ops)
]

{ #category : #generated }
ElixirStructExprNode >> identifier [
	^ identifier
]

{ #category : #generated }
ElixirStructExprNode >> identifier: anObject [
	self setParent: self identifier to: nil.
	identifier := anObject.
	self setParent: self identifier to: self
]

{ #category : #'generated-initialize-release' }
ElixirStructExprNode >> initialize [
	super initialize.
	ops := OrderedCollection new: 2.
]

{ #category : #generated }
ElixirStructExprNode >> ops [
	^ ops
]

{ #category : #generated }
ElixirStructExprNode >> ops: anOrderedCollection [
	ops := anOrderedCollection
]

{ #category : #generated }
ElixirStructExprNode >> otherVariables [
	^ #(#identifier)
]
