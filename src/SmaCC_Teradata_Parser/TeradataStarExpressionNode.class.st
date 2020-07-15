Class {
	#name : #TeradataStarExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'names',
		'periods',
		'star'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataStarExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStarExpression: self
]

{ #category : #generated }
TeradataStarExpressionNode >> compositeTokenVariables [
	^ #(#names #periods #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
TeradataStarExpressionNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataStarExpressionNode >> names [
	^ names
]

{ #category : #generated }
TeradataStarExpressionNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
TeradataStarExpressionNode >> periods [
	^ periods
]

{ #category : #generated }
TeradataStarExpressionNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : #generated }
TeradataStarExpressionNode >> star [
	^ star
]

{ #category : #generated }
TeradataStarExpressionNode >> star: aSmaCCToken [
	star := aSmaCCToken
]

{ #category : #generated }
TeradataStarExpressionNode >> tokenVariables [
	^ #(#star)
]
