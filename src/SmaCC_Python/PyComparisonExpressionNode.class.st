Class {
	#name : #PyComparisonExpressionNode,
	#superclass : #PyBinaryExpressionNode,
	#instVars : [
		'not'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyComparisonExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitComparisonExpression: self
]

{ #category : #generated }
PyComparisonExpressionNode >> not [
	^ not
]

{ #category : #generated }
PyComparisonExpressionNode >> not: aSmaCCToken [
	not := aSmaCCToken
]

{ #category : #generated }
PyComparisonExpressionNode >> tokenVariables [
	^ #(#not #opeator #operator)
]
