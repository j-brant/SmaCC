Class {
	#name : 'KotlinLabeledExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'label',
		'expression'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinLabeledExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitLabeledExpression: self
]

{ #category : 'generated' }
KotlinLabeledExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinLabeledExpressionNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
KotlinLabeledExpressionNode >> label [
	^ label
]

{ #category : 'generated' }
KotlinLabeledExpressionNode >> label: aKotlinLabelNode [
	self label notNil ifTrue: [ self label parent: nil ].
	label := aKotlinLabelNode.
	self label notNil ifTrue: [ self label parent: self ]
]

{ #category : 'generated' }
KotlinLabeledExpressionNode >> nodeVariables [
	^ #(#label #expression)
]
