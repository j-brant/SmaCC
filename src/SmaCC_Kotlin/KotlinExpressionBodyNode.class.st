Class {
	#name : 'KotlinExpressionBodyNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'operator',
		'expression'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinExpressionBodyNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitExpressionBody: self
]

{ #category : 'generated' }
KotlinExpressionBodyNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinExpressionBodyNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
KotlinExpressionBodyNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
KotlinExpressionBodyNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinExpressionBodyNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinExpressionBodyNode >> tokenVariables [
	^ #(#operator)
]
