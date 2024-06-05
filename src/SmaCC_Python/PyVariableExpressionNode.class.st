Class {
	#name : #PyVariableExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'nameToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyVariableExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitVariableExpression: self
]

{ #category : #generated }
PyVariableExpressionNode >> nameToken [
	^ nameToken
]

{ #category : #generated }
PyVariableExpressionNode >> nameToken: aSmaCCToken [
	nameToken := aSmaCCToken
]

{ #category : #generated }
PyVariableExpressionNode >> tokenVariables [
	^ #(#nameToken)
]
