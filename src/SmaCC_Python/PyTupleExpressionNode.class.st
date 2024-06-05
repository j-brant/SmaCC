Class {
	#name : #PyTupleExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'lparenToken',
		'rparenToken',
		'expressions',
		'commaTokens'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyTupleExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitTupleExpression: self
]

{ #category : #generated }
PyTupleExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyTupleExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyTupleExpressionNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
PyTupleExpressionNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyTupleExpressionNode >> expressions [
	^ expressions
]

{ #category : #generated }
PyTupleExpressionNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
PyTupleExpressionNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyTupleExpressionNode >> lparenToken [
	^ lparenToken
]

{ #category : #generated }
PyTupleExpressionNode >> lparenToken: aSmaCCToken [
	lparenToken := aSmaCCToken
]

{ #category : #generated }
PyTupleExpressionNode >> rparenToken [
	^ rparenToken
]

{ #category : #generated }
PyTupleExpressionNode >> rparenToken: aSmaCCToken [
	rparenToken := aSmaCCToken
]

{ #category : #generated }
PyTupleExpressionNode >> tokenVariables [
	^ #(#lparenToken #rparenToken)
]
