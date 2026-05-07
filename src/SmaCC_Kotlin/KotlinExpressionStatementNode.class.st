Class {
	#name : 'KotlinExpressionStatementNode',
	#superclass : 'KotlinStatementNode',
	#instVars : [
		'expression'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinExpressionStatementNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitExpressionStatement: self
]

{ #category : 'generated' }
KotlinExpressionStatementNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinExpressionStatementNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
KotlinExpressionStatementNode >> nodeVariables [
	^ #(#expression)
]
