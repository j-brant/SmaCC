Class {
	#name : 'KotlinNameExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'name'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinNameExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitNameExpression: self
]

{ #category : 'generated' }
KotlinNameExpressionNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinNameExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinNameExpressionNode >> tokenVariables [
	^ #(#name)
]
