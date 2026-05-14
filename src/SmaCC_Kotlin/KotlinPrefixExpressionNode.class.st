Class {
	#name : 'KotlinPrefixExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'operator',
		'expression'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinPrefixExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitPrefixExpression: self
]

{ #category : 'generated' }
KotlinPrefixExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinPrefixExpressionNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
KotlinPrefixExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
KotlinPrefixExpressionNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinPrefixExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinPrefixExpressionNode >> tokenVariables [
	^ #(#operator)
]
