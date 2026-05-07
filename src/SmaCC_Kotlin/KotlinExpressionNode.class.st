Class {
	#name : 'KotlinExpressionNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'leftParens',
		'rightParens'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitExpression: self
]

{ #category : 'generated' }
KotlinExpressionNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
KotlinExpressionNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinExpressionNode >> leftParens [
	^ leftParens
]

{ #category : 'generated' }
KotlinExpressionNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : 'generated' }
KotlinExpressionNode >> rightParens [
	^ rightParens
]

{ #category : 'generated' }
KotlinExpressionNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]
