Class {
	#name : #PyDecoratorExpressionNode,
	#superclass : #PyFunctionCallExpressionNode,
	#instVars : [
		'ampersandToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyDecoratorExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitDecoratorExpression: self
]

{ #category : #generated }
PyDecoratorExpressionNode >> ampersandToken [
	^ ampersandToken
]

{ #category : #generated }
PyDecoratorExpressionNode >> ampersandToken: aSmaCCToken [
	ampersandToken := aSmaCCToken
]

{ #category : #generated }
PyDecoratorExpressionNode >> tokenVariables [
	^ #(#ampersandToken #lparenToken #rparenToken #starStarToken)
]
