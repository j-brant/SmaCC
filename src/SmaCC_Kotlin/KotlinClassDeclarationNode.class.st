Class {
	#name : 'KotlinClassDeclarationNode',
	#superclass : 'KotlinDeclarationNode',
	#instVars : [
		'annotations',
		'modifiers',
		'classToken',
		'name',
		'lt',
		'parameters',
		'commaTokens',
		'gt',
		'leftParen',
		'rightParen',
		'constructorToken',
		'colonToken',
		'annotatedSpecifiers',
		'whereToken',
		'constraints',
		'leftBrace',
		'declarations',
		'semicolonTokens',
		'rightBrace',
		'entries',
		'interfaceToken',
		'funToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinClassDeclarationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitClassDeclaration: self
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> annotatedSpecifiers [
	^ annotatedSpecifiers
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> annotatedSpecifiers: anOrderedCollection [
	self setParents: self annotatedSpecifiers to: nil.
	annotatedSpecifiers := anOrderedCollection.
	self setParents: self annotatedSpecifiers to: self
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> classToken [
	^ classToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> compositeNodeVariables [
	^ #(#annotations #modifiers #parameters #annotatedSpecifiers #constraints #declarations #entries)
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> compositeTokenVariables [
	^ #(#commaTokens #semicolonTokens)
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> constraints [
	^ constraints
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> constraints: anOrderedCollection [
	self setParents: self constraints to: nil.
	constraints := anOrderedCollection.
	self setParents: self constraints to: self
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> constructorToken [
	^ constructorToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> constructorToken: aSmaCCToken [
	constructorToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> declarations [
	^ declarations
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> entries [
	^ entries
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> funToken [
	^ funToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> funToken: aSmaCCToken [
	funToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> gt [
	^ gt
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinClassDeclarationNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	annotatedSpecifiers := OrderedCollection new: 2.
	constraints := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	semicolonTokens := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> interfaceToken [
	^ interfaceToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> interfaceToken: aSmaCCToken [
	interfaceToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> lt [
	^ lt
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> parameters [
	^ parameters
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> tokenVariables [
	^ #(#classToken #name #lt #gt #leftParen #rightParen #constructorToken #colonToken #whereToken #leftBrace #rightBrace #interfaceToken #funToken)
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> whereToken [
	^ whereToken
]

{ #category : 'generated' }
KotlinClassDeclarationNode >> whereToken: aSmaCCToken [
	whereToken := aSmaCCToken
]
