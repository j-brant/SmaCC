Class {
	#name : 'KotlinAnnotatedExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'annotation',
		'expression'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinAnnotatedExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitAnnotatedExpression: self
]

{ #category : 'generated' }
KotlinAnnotatedExpressionNode >> annotation [
	^ annotation
]

{ #category : 'generated' }
KotlinAnnotatedExpressionNode >> annotation: aKotlinAnnotationNode [
	self annotation notNil ifTrue: [ self annotation parent: nil ].
	annotation := aKotlinAnnotationNode.
	self annotation notNil ifTrue: [ self annotation parent: self ]
]

{ #category : 'generated' }
KotlinAnnotatedExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinAnnotatedExpressionNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
KotlinAnnotatedExpressionNode >> nodeVariables [
	^ #(#annotation #expression)
]
