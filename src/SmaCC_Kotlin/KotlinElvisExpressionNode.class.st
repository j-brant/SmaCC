Class {
	#name : 'KotlinElvisExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'left',
		'operators',
		'right'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinElvisExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitElvisExpression: self
]

{ #category : 'generated' }
KotlinElvisExpressionNode >> compositeTokenVariables [
	^ #(#operators #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
KotlinElvisExpressionNode >> initialize [
	super initialize.
	operators := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinElvisExpressionNode >> left [
	^ left
]

{ #category : 'generated' }
KotlinElvisExpressionNode >> left: aKotlinExpressionNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aKotlinExpressionNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : 'generated' }
KotlinElvisExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : 'generated' }
KotlinElvisExpressionNode >> operators [
	^ operators
]

{ #category : 'generated' }
KotlinElvisExpressionNode >> operators: anOrderedCollection [
	operators := anOrderedCollection
]

{ #category : 'generated' }
KotlinElvisExpressionNode >> right [
	^ right
]

{ #category : 'generated' }
KotlinElvisExpressionNode >> right: aKotlinExpressionNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aKotlinExpressionNode.
	self right notNil ifTrue: [ self right parent: self ]
]
