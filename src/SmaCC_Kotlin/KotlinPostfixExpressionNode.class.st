Class {
	#name : 'KotlinPostfixExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'expression',
		'suffix'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinPostfixExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitPostfixExpression: self
]

{ #category : 'generated' }
KotlinPostfixExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinPostfixExpressionNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
KotlinPostfixExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
KotlinPostfixExpressionNode >> otherVariables [
	^ #(#suffix)
]

{ #category : 'generated' }
KotlinPostfixExpressionNode >> suffix [
	^ suffix
]

{ #category : 'generated' }
KotlinPostfixExpressionNode >> suffix: anObject [
	self setParent: self suffix to: nil.
	suffix := anObject.
	self setParent: self suffix to: self
]
