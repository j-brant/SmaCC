Class {
	#name : #PyComparisonExpressionNode,
	#superclass : #PyBinaryExpressionNode,
	#instVars : [
		'notToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyComparisonExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitComparisonExpression: self
]

{ #category : #generated }
PyComparisonExpressionNode >> notToken [
	^ notToken
]

{ #category : #generated }
PyComparisonExpressionNode >> notToken: aSmaCCToken [
	notToken := aSmaCCToken
]

{ #category : #generated }
PyComparisonExpressionNode >> tokenVariables [
	^ #(#notToken #opeator #operator)
]
