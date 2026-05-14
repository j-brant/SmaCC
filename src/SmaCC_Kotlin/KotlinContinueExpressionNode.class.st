Class {
	#name : 'KotlinContinueExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'continueToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinContinueExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitContinueExpression: self
]

{ #category : 'generated' }
KotlinContinueExpressionNode >> continueToken [
	^ continueToken
]

{ #category : 'generated' }
KotlinContinueExpressionNode >> continueToken: aSmaCCToken [
	continueToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinContinueExpressionNode >> tokenVariables [
	^ #(#continueToken)
]
