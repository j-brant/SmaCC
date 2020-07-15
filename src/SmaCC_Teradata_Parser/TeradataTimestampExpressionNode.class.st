Class {
	#name : #TeradataTimestampExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'typeToken',
		'value'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataTimestampExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTimestampExpression: self
]

{ #category : #generated }
TeradataTimestampExpressionNode >> tokenVariables [
	^ #(#typeToken #value)
]

{ #category : #generated }
TeradataTimestampExpressionNode >> typeToken [
	^ typeToken
]

{ #category : #generated }
TeradataTimestampExpressionNode >> typeToken: aSmaCCToken [
	typeToken := aSmaCCToken
]

{ #category : #generated }
TeradataTimestampExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataTimestampExpressionNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
