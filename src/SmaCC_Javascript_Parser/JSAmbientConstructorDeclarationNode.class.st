Class {
	#name : #JSAmbientConstructorDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'constructorToken',
		'left',
		'restParameter',
		'parameters',
		'commas',
		'right',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAmbientConstructorDeclaration: self
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> constructorToken [
	^ constructorToken
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> constructorToken: aSmaCCToken [
	constructorToken := aSmaCCToken
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> ignoredTokenVariables [
	^ #(#left #right #semicolon)
]

{ #category : #'generated-initialize-release' }
JSAmbientConstructorDeclarationNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> left [
	^ left
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> nodeVariables [
	^ #(#restParameter)
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> restParameter [
	^ restParameter
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> restParameter: aJSRestVariableDeclarationNode [
	self restParameter notNil
		ifTrue: [ self restParameter parent: nil ].
	restParameter := aJSRestVariableDeclarationNode.
	self restParameter notNil
		ifTrue: [ self restParameter parent: self ]
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> right [
	^ right
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSAmbientConstructorDeclarationNode >> tokenVariables [
	^ #(#constructorToken)
]
