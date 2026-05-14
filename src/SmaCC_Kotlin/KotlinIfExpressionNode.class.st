Class {
	#name : 'KotlinIfExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'ifToken',
		'condition',
		'thenBody',
		'semicolonTokens',
		'elseToken',
		'elseBody'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinIfExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitIfExpression: self
]

{ #category : 'generated' }
KotlinIfExpressionNode >> compositeTokenVariables [
	^ #(#semicolonTokens #leftParens #rightParens)
]

{ #category : 'generated' }
KotlinIfExpressionNode >> condition [
	^ condition
]

{ #category : 'generated' }
KotlinIfExpressionNode >> condition: aKotlinExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aKotlinExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : 'generated' }
KotlinIfExpressionNode >> elseBody [
	^ elseBody
]

{ #category : 'generated' }
KotlinIfExpressionNode >> elseBody: aKotlinNodeNode [
	self elseBody notNil ifTrue: [ self elseBody parent: nil ].
	elseBody := aKotlinNodeNode.
	self elseBody notNil ifTrue: [ self elseBody parent: self ]
]

{ #category : 'generated' }
KotlinIfExpressionNode >> elseToken [
	^ elseToken
]

{ #category : 'generated' }
KotlinIfExpressionNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinIfExpressionNode >> ifToken [
	^ ifToken
]

{ #category : 'generated' }
KotlinIfExpressionNode >> ifToken: aSmaCCToken [
	ifToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinIfExpressionNode >> initialize [
	super initialize.
	semicolonTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinIfExpressionNode >> nodeVariables [
	^ #(#condition #thenBody #elseBody)
]

{ #category : 'generated' }
KotlinIfExpressionNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : 'generated' }
KotlinIfExpressionNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinIfExpressionNode >> thenBody [
	^ thenBody
]

{ #category : 'generated' }
KotlinIfExpressionNode >> thenBody: aKotlinNodeNode [
	self thenBody notNil ifTrue: [ self thenBody parent: nil ].
	thenBody := aKotlinNodeNode.
	self thenBody notNil ifTrue: [ self thenBody parent: self ]
]

{ #category : 'generated' }
KotlinIfExpressionNode >> tokenVariables [
	^ #(#ifToken #elseToken)
]
