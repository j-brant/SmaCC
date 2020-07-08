Class {
	#name : #TeradataStarExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'star'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataStarExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStarExpression: self
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
