Class {
	#name : #TeradataVariableExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataVariableExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariableExpression: self
]

{ #category : #generated }
TeradataVariableExpressionNode >> name [
	^ name
]

{ #category : #generated }
TeradataVariableExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataVariableExpressionNode >> tokenVariables [
	^ #(#name)
]
