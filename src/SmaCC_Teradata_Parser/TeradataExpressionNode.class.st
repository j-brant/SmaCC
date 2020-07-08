Class {
	#name : #TeradataExpressionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'leftParens',
		'rightParens'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpression: self
]

{ #category : #generated }
TeradataExpressionNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
TeradataExpressionNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataExpressionNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
TeradataExpressionNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
TeradataExpressionNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
TeradataExpressionNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]
