Class {
	#name : 'KotlinLiteralExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'literal'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinLiteralExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitLiteralExpression: self
]

{ #category : 'generated' }
KotlinLiteralExpressionNode >> literal [
	^ literal
]

{ #category : 'generated' }
KotlinLiteralExpressionNode >> literal: aSmaCCToken [
	literal := aSmaCCToken
]

{ #category : 'generated' }
KotlinLiteralExpressionNode >> tokenVariables [
	^ #(#literal)
]
