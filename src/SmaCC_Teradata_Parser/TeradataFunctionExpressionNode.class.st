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
TeradataFunctionExpressionNode >> function: aTeradataIdentifierNameNode [
	self function notNil
		ifTrue: [ self function parent: nil ].
	function := aTeradataIdentifierNameNode.
	self function notNil
		ifTrue: [ self function parent: self ]
]

{ #category : #'generated-initialize-release' }
TeradataFunctionExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataFunctionExpressionNode >> nodeVariables [
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
