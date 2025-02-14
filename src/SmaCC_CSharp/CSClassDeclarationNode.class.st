Class {
	#name : #CSClassDeclarationNode,
	#superclass : #CSDeclarationNode,
	#instVars : [
		'_attributes',
		'modifiers',
		'partialToken',
		'classToken',
		'recordToken',
		'name',
		'typeParameters',
		'colonToken',
		'supertypes',
		'leftParenToken',
		'arguments',
		'commaTokens',
		'rightParenToken',
		'commas',
		'constraintClauses',
		'leftBraceToken',
		'declarations',
		'rightBraceToken',
		'semicolon',
		'leftParen',
		'parameters',
		'rightParen'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSClassDeclarationNode >> _attributes [
	^ _attributes
]

{ #category : #generated }
CSClassDeclarationNode >> _attributes: anOrderedCollection [
	self setParents: self _attributes to: nil.
	_attributes := anOrderedCollection.
	self setParents: self _attributes to: self
]

{ #category : #generated }
CSClassDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassDeclaration: self
]

{ #category : #generated }
CSClassDeclarationNode >> arguments [
	^ arguments
]

{ #category : #generated }
CSClassDeclarationNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
CSClassDeclarationNode >> classToken [
	^ classToken
]

{ #category : #generated }
CSClassDeclarationNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
CSClassDeclarationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSClassDeclarationNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSClassDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
CSClassDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CSClassDeclarationNode >> compositeNodeVariables [
	^ #(#_attributes #supertypes #arguments #constraintClauses #declarations #parameters)
]

{ #category : #generated }
CSClassDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #commas)
]

{ #category : #generated }
CSClassDeclarationNode >> constraintClauses [
	^ constraintClauses
]

{ #category : #generated }
CSClassDeclarationNode >> constraintClauses: anOrderedCollection [
	self setParents: self constraintClauses to: nil.
	constraintClauses := anOrderedCollection.
	self setParents: self constraintClauses to: self
]

{ #category : #generated }
CSClassDeclarationNode >> declarations [
	^ declarations
]

{ #category : #generated }
CSClassDeclarationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
CSClassDeclarationNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #'generated-initialize-release' }
CSClassDeclarationNode >> initialize [
	super initialize.
	_attributes := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
	supertypes := OrderedCollection new: 2.
	arguments := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	constraintClauses := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
]

{ #category : #generated }
CSClassDeclarationNode >> leftBraceToken [
	^ leftBraceToken
]

{ #category : #generated }
CSClassDeclarationNode >> leftBraceToken: aSmaCCToken [
	leftBraceToken := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CSClassDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> leftParenToken [
	^ leftParenToken
]

{ #category : #generated }
CSClassDeclarationNode >> leftParenToken: aSmaCCToken [
	leftParenToken := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
CSClassDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
CSClassDeclarationNode >> name [
	^ name
]

{ #category : #generated }
CSClassDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> nodeVariables [
	^ #(#typeParameters)
]

{ #category : #generated }
CSClassDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
CSClassDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
CSClassDeclarationNode >> partialToken [
	^ partialToken
]

{ #category : #generated }
CSClassDeclarationNode >> partialToken: aSmaCCToken [
	partialToken := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> recordToken [
	^ recordToken
]

{ #category : #generated }
CSClassDeclarationNode >> recordToken: aSmaCCToken [
	recordToken := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> rightBraceToken [
	^ rightBraceToken
]

{ #category : #generated }
CSClassDeclarationNode >> rightBraceToken: aSmaCCToken [
	rightBraceToken := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSClassDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> rightParenToken [
	^ rightParenToken
]

{ #category : #generated }
CSClassDeclarationNode >> rightParenToken: aSmaCCToken [
	rightParenToken := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CSClassDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CSClassDeclarationNode >> supertypes [
	^ supertypes
]

{ #category : #generated }
CSClassDeclarationNode >> supertypes: anOrderedCollection [
	self setParents: self supertypes to: nil.
	supertypes := anOrderedCollection.
	self setParents: self supertypes to: self
]

{ #category : #generated }
CSClassDeclarationNode >> tokenVariables [
	^ #(#partialToken #classToken #recordToken #name #colonToken #leftParenToken #rightParenToken #leftBraceToken #rightBraceToken #semicolon #leftParen #rightParen)
]

{ #category : #generated }
CSClassDeclarationNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
CSClassDeclarationNode >> typeParameters: aCSTypeParameterListNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aCSTypeParameterListNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]
