Class {
	#name : 'KotlinBreakExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'breakToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinBreakExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitBreakExpression: self
]

{ #category : 'generated' }
KotlinBreakExpressionNode >> breakToken [
	^ breakToken
]

{ #category : 'generated' }
KotlinBreakExpressionNode >> breakToken: aSmaCCToken [
	breakToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinBreakExpressionNode >> tokenVariables [
	^ #(#breakToken)
]
