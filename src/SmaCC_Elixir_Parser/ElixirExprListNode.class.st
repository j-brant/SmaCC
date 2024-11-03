Class {
	#name : #ElixirExprListNode,
	#superclass : #ElixirProgramNode,
	#instVars : [
		'expressions',
		'eoes'
	],
	#category : 'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirExprListNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExprList: self
]

{ #category : #generated }
ElixirExprListNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
ElixirExprListNode >> compositeTokenVariables [
	^ #(#eoes)
]

{ #category : #generated }
ElixirExprListNode >> eoes [
	^ eoes
]

{ #category : #generated }
ElixirExprListNode >> eoes: anOrderedCollection [
	eoes := anOrderedCollection
]

{ #category : #generated }
ElixirExprListNode >> expressions [
	^ expressions
]

{ #category : #generated }
ElixirExprListNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
ElixirExprListNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	eoes := OrderedCollection new: 2.
]
