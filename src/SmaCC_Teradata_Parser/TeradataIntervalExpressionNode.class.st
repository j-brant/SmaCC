Class {
	#name : #TeradataIntervalExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'intervalToken',
		'interval',
		'name'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataIntervalExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIntervalExpression: self
]

{ #category : #generated }
TeradataIntervalExpressionNode >> interval [
	^ interval
]

{ #category : #generated }
TeradataIntervalExpressionNode >> interval: aSmaCCToken [
	interval := aSmaCCToken
]

{ #category : #generated }
TeradataIntervalExpressionNode >> intervalToken [
	^ intervalToken
]

{ #category : #generated }
TeradataIntervalExpressionNode >> intervalToken: aSmaCCToken [
	intervalToken := aSmaCCToken
]

{ #category : #generated }
TeradataIntervalExpressionNode >> name [
	^ name
]

{ #category : #generated }
TeradataIntervalExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataIntervalExpressionNode >> tokenVariables [
	^ #(#intervalToken #interval #name)
]
