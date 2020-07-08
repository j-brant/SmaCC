Class {
	#name : #TeradataNullExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'nullToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataNullExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNullExpression: self
]

{ #category : #generated }
TeradataNullExpressionNode >> nullToken [
	^ nullToken
]

{ #category : #generated }
TeradataNullExpressionNode >> nullToken: aSmaCCToken [
	nullToken := aSmaCCToken
]

{ #category : #generated }
TeradataNullExpressionNode >> tokenVariables [
	^ #(#nullToken)
]
