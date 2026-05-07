Class {
	#name : 'KotlinThisExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'thisToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinThisExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitThisExpression: self
]

{ #category : 'generated' }
KotlinThisExpressionNode >> thisToken [
	^ thisToken
]

{ #category : 'generated' }
KotlinThisExpressionNode >> thisToken: aSmaCCToken [
	thisToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinThisExpressionNode >> tokenVariables [
	^ #(#thisToken)
]
