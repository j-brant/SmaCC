Class {
	#name : #ElixirUnmatchedExprNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'matched',
		'expressions',
		'op'
	],
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirUnmatchedExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnmatchedExpr: self
]

{ #category : #generated }
ElixirUnmatchedExprNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
ElixirUnmatchedExprNode >> expressions [
	^ expressions
]

{ #category : #generated }
ElixirUnmatchedExprNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
ElixirUnmatchedExprNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
]

{ #category : #generated }
ElixirUnmatchedExprNode >> matched [
	^ matched
]

{ #category : #generated }
ElixirUnmatchedExprNode >> matched: anElixirMatchedExprNode [
	self matched notNil ifTrue: [ self matched parent: nil ].
	matched := anElixirMatchedExprNode.
	self matched notNil ifTrue: [ self matched parent: self ]
]

{ #category : #generated }
ElixirUnmatchedExprNode >> nodeVariables [
	^ #(#matched)
]

{ #category : #generated }
ElixirUnmatchedExprNode >> op [
	^ op
]

{ #category : #generated }
ElixirUnmatchedExprNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
ElixirUnmatchedExprNode >> tokenVariables [
	^ #(#op)
]
