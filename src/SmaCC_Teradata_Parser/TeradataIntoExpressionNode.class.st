Class {
	#name : #TeradataIntoExpressionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'intoToken',
		'leftParen',
		'values',
		'commas',
		'rightParen'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataIntoExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIntoExpression: self
]

{ #category : #generated }
TeradataIntoExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataIntoExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataIntoExpressionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataIntoExpressionNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
TeradataIntoExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataIntoExpressionNode >> intoToken [
	^ intoToken
]

{ #category : #generated }
TeradataIntoExpressionNode >> intoToken: aSmaCCToken [
	intoToken := aSmaCCToken
]

{ #category : #generated }
TeradataIntoExpressionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataIntoExpressionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataIntoExpressionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataIntoExpressionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataIntoExpressionNode >> tokenVariables [
	^ #(#intoToken #leftParen #rightParen)
]

{ #category : #generated }
TeradataIntoExpressionNode >> values [
	^ values
]

{ #category : #generated }
TeradataIntoExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
