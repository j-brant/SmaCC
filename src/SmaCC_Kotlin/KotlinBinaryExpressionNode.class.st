Class {
	#name : 'KotlinBinaryExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'left',
		'operators',
		'right',
		'operatorName'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinBinaryExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitBinaryExpression: self
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> compositeTokenVariables [
	^ #(#operators #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
KotlinBinaryExpressionNode >> initialize [
	super initialize.
	operators := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> left [
	^ left
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> left: aKotlinExpressionNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aKotlinExpressionNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> operatorName [
	^ operatorName
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> operatorName: aSmaCCToken [
	operatorName := aSmaCCToken
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> operators [
	^ operators
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> operators: anOrderedCollection [
	operators := anOrderedCollection
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> right [
	^ right
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> right: aKotlinExpressionNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aKotlinExpressionNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : 'generated' }
KotlinBinaryExpressionNode >> tokenVariables [
	^ #(#operatorName)
]
