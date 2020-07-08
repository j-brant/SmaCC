Class {
	#name : #TeradataLiteralExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataLiteralExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLiteralExpression: self
]

{ #category : #generated }
TeradataLiteralExpressionNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataLiteralExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataLiteralExpressionNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
