Class {
	#name : 'KotlinBlockNode',
	#superclass : 'KotlinStatementNode',
	#instVars : [
		'semicolonTokens',
		'statements',
		'rightBrace',
		'leftBrace'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinBlockNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitBlock: self
]

{ #category : 'generated' }
KotlinBlockNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : 'generated' }
KotlinBlockNode >> compositeTokenVariables [
	^ #(#semicolonTokens)
]

{ #category : 'generated-initialize-release' }
KotlinBlockNode >> initialize [
	super initialize.
	semicolonTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinBlockNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
KotlinBlockNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinBlockNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
KotlinBlockNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinBlockNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : 'generated' }
KotlinBlockNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinBlockNode >> statements [
	^ statements
]

{ #category : 'generated' }
KotlinBlockNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
KotlinBlockNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
