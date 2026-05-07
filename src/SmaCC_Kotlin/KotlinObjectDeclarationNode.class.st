Class {
	#name : 'KotlinObjectDeclarationNode',
	#superclass : 'KotlinDeclarationNode',
	#instVars : [
		'annotations',
		'modifiers',
		'objectToken',
		'name',
		'leftBrace',
		'declarations',
		'semicolonTokens',
		'rightBrace',
		'colonToken',
		'annotatedSpecifiers',
		'commaTokens'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinObjectDeclarationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitObjectDeclaration: self
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> annotatedSpecifiers [
	^ annotatedSpecifiers
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> annotatedSpecifiers: anOrderedCollection [
	self setParents: self annotatedSpecifiers to: nil.
	annotatedSpecifiers := anOrderedCollection.
	self setParents: self annotatedSpecifiers to: self
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> compositeNodeVariables [
	^ #(#annotations #modifiers #declarations #annotatedSpecifiers)
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> compositeTokenVariables [
	^ #(#semicolonTokens #commaTokens)
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> declarations [
	^ declarations
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : 'generated-initialize-release' }
KotlinObjectDeclarationNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	semicolonTokens := OrderedCollection new: 2.
	annotatedSpecifiers := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> objectToken [
	^ objectToken
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> objectToken: aSmaCCToken [
	objectToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinObjectDeclarationNode >> tokenVariables [
	^ #(#objectToken #name #leftBrace #rightBrace #colonToken)
]
