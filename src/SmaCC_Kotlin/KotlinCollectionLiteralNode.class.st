Class {
	#name : 'KotlinCollectionLiteralNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'leftBracket',
		'rightBracket',
		'values',
		'commaTokens'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinCollectionLiteralNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitCollectionLiteral: self
]

{ #category : 'generated' }
KotlinCollectionLiteralNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinCollectionLiteralNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinCollectionLiteralNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : 'generated' }
KotlinCollectionLiteralNode >> compositeTokenVariables [
	^ #(#commaTokens #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
KotlinCollectionLiteralNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinCollectionLiteralNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
KotlinCollectionLiteralNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
KotlinCollectionLiteralNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
KotlinCollectionLiteralNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : 'generated' }
KotlinCollectionLiteralNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : 'generated' }
KotlinCollectionLiteralNode >> values [
	^ values
]

{ #category : 'generated' }
KotlinCollectionLiteralNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
