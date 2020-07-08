Class {
	#name : #TeradataFunctionExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'function',
		'values',
		'commas'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataFunctionExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionExpression: self
]

{ #category : #generated }
TeradataFunctionExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataFunctionExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataFunctionExpressionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataFunctionExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #generated }
TeradataFunctionExpressionNode >> function [
	^ function
]

{ #category : #generated }
TeradataFunctionExpressionNode >> function: aSmaCCToken [
	function := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataFunctionExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataFunctionExpressionNode >> tokenVariables [
	^ #(#function)
]

{ #category : #generated }
TeradataFunctionExpressionNode >> values [
	^ values
]

{ #category : #generated }
TeradataFunctionExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
