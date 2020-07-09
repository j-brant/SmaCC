Class {
	#name : #TeradataIdentifierExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'names',
		'periods'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataIdentifierExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifierExpression: self
]

{ #category : #generated }
TeradataIdentifierExpressionNode >> compositeTokenVariables [
	^ #(#names #periods #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
TeradataIdentifierExpressionNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataIdentifierExpressionNode >> names [
	^ names
]

{ #category : #generated }
TeradataIdentifierExpressionNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
TeradataIdentifierExpressionNode >> periods [
	^ periods
]

{ #category : #generated }
TeradataIdentifierExpressionNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]
