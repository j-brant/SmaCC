Class {
	#name : #ElixirMatchedExprNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'ops',
		'expressions',
		'identifier'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirMatchedExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMatchedExpr: self
]

{ #category : #generated }
ElixirMatchedExprNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
ElixirMatchedExprNode >> compositeTokenVariables [
	^ #(#ops)
]

{ #category : #generated }
ElixirMatchedExprNode >> expressions [
	^ expressions
]

{ #category : #generated }
ElixirMatchedExprNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #generated }
ElixirMatchedExprNode >> identifier [
	^ identifier
]

{ #category : #generated }
ElixirMatchedExprNode >> identifier: aSmaCCToken [
	identifier := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
ElixirMatchedExprNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	ops := OrderedCollection new: 2.
]

{ #category : #generated }
ElixirMatchedExprNode >> ops [
	^ ops
]

{ #category : #generated }
ElixirMatchedExprNode >> ops: anOrderedCollection [
	ops := anOrderedCollection
]

{ #category : #generated }
ElixirMatchedExprNode >> tokenVariables [
	^ #(#identifier)
]
