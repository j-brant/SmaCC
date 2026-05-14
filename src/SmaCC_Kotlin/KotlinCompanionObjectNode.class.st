Class {
	#name : 'KotlinCompanionObjectNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'annotations',
		'modifiers',
		'companionToken',
		'objectToken',
		'colonToken',
		'annotatedSpecifiers',
		'commaTokens',
		'leftBrace',
		'declarations',
		'semicolonTokens',
		'rightBrace',
		'name',
		'dataToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinCompanionObjectNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitCompanionObject: self
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> annotatedSpecifiers [
	^ annotatedSpecifiers
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> annotatedSpecifiers: anOrderedCollection [
	self setParents: self annotatedSpecifiers to: nil.
	annotatedSpecifiers := anOrderedCollection.
	self setParents: self annotatedSpecifiers to: self
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> companionToken [
	^ companionToken
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> companionToken: aSmaCCToken [
	companionToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> compositeNodeVariables [
	^ #(#annotations #modifiers #annotatedSpecifiers #declarations)
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> compositeTokenVariables [
	^ #(#commaTokens #semicolonTokens)
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> dataToken [
	^ dataToken
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> dataToken: aSmaCCToken [
	dataToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> declarations [
	^ declarations
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : 'generated-initialize-release' }
KotlinCompanionObjectNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
	annotatedSpecifiers := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	semicolonTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> objectToken [
	^ objectToken
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> objectToken: aSmaCCToken [
	objectToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinCompanionObjectNode >> tokenVariables [
	^ #(#companionToken #objectToken #colonToken #leftBrace #rightBrace #name #dataToken)
]
