Class {
	#name : #TeradataIdentifierExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataIdentifierExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifierExpression: self
]

{ #category : #generated }
TeradataIdentifierExpressionNode >> name [
	^ name
]

{ #category : #generated }
TeradataIdentifierExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataIdentifierExpressionNode >> tokenVariables [
	^ #(#name)
]
