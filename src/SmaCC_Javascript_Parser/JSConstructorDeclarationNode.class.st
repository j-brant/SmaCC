Class {
	#name : #JSConstructorDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'constructorToken',
		'leftParen',
		'restParameter',
		'parameters',
		'commas',
		'rightParen',
		'leftBrace',
		'statements',
		'rightBrace',
		'modifier',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSConstructorDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstructorDeclaration: self
]

{ #category : #generated }
JSConstructorDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
JSConstructorDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSConstructorDeclarationNode >> compositeNodeVariables [
	^ #(#parameters #statements)
]

{ #category : #generated }
JSConstructorDeclarationNode >> constructorToken [
	^ constructorToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> constructorToken: aSmaCCToken [
	constructorToken := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
JSConstructorDeclarationNode >> ignoredTokenVariables [
	^ #(#leftParen #rightParen #leftBrace #rightBrace #semicolon)
]

{ #category : #'generated-initialize-release' }
JSConstructorDeclarationNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
JSConstructorDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JSConstructorDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
JSConstructorDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> modifier [
	^ modifier
]

{ #category : #generated }
JSConstructorDeclarationNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> nodeVariables [
	^ #(#restParameter)
]

{ #category : #generated }
JSConstructorDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
JSConstructorDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
JSConstructorDeclarationNode >> restParameter [
	^ restParameter
]

{ #category : #generated }
JSConstructorDeclarationNode >> restParameter: aJSRestVariableDeclarationNode [
	self restParameter notNil
		ifTrue: [ self restParameter parent: nil ].
	restParameter := aJSRestVariableDeclarationNode.
	self restParameter notNil
		ifTrue: [ self restParameter parent: self ]
]

{ #category : #generated }
JSConstructorDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JSConstructorDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
JSConstructorDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSConstructorDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
JSConstructorDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
JSConstructorDeclarationNode >> tokenVariables [
	^ #(#constructorToken #modifier)
]
