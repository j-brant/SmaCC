Class {
	#name : 'KotlinObjectLiteralNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'objectToken',
		'leftBrace',
		'declarations',
		'semicolonTokens',
		'rightBrace',
		'colonToken',
		'annotatedSpecifiers',
		'commaTokens',
		'dataToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinObjectLiteralNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitObjectLiteral: self
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> annotatedSpecifiers [
	^ annotatedSpecifiers
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> annotatedSpecifiers: anOrderedCollection [
	self setParents: self annotatedSpecifiers to: nil.
	annotatedSpecifiers := anOrderedCollection.
	self setParents: self annotatedSpecifiers to: self
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> compositeNodeVariables [
	^ #(#declarations #annotatedSpecifiers)
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> compositeTokenVariables [
	^ #(#semicolonTokens #commaTokens #leftParens #rightParens)
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> dataToken [
	^ dataToken
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> dataToken: aSmaCCToken [
	dataToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> declarations [
	^ declarations
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : 'generated-initialize-release' }
KotlinObjectLiteralNode >> initialize [
	super initialize.
	declarations := OrderedCollection new: 2.
	semicolonTokens := OrderedCollection new: 2.
	annotatedSpecifiers := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> objectToken [
	^ objectToken
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> objectToken: aSmaCCToken [
	objectToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinObjectLiteralNode >> tokenVariables [
	^ #(#objectToken #leftBrace #rightBrace #colonToken #dataToken)
]
