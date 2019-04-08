Class {
	#name : #CPPClassSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'classToken',
		'structToken',
		'unionToken',
		'name',
		'nameSpecifier',
		'colons',
		'specifiers',
		'ellipsises',
		'commas',
		'finalToken',
		'leftBrace',
		'rightBrace',
		'declarations',
		'accessTokens'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPClassSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassSpecifier: self
]

{ #category : #generated }
CPPClassSpecifierNode >> accessTokens [
	^ accessTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> accessTokens: anOrderedCollection [
	accessTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> classToken [
	^ classToken
]

{ #category : #generated }
CPPClassSpecifierNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
CPPClassSpecifierNode >> colons [
	^ colons
]

{ #category : #generated }
CPPClassSpecifierNode >> colons: anOrderedCollection [
	colons := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> commas [
	^ commas
]

{ #category : #generated }
CPPClassSpecifierNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> compositeNodeVariables [
	^ #(#specifiers #declarations)
]

{ #category : #generated }
CPPClassSpecifierNode >> compositeTokenVariables [
	^ #(#colons #ellipsises #commas #accessTokens)
]

{ #category : #generated }
CPPClassSpecifierNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPClassSpecifierNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPClassSpecifierNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> finalToken [
	^ finalToken
]

{ #category : #generated }
CPPClassSpecifierNode >> finalToken: aSmaCCToken [
	finalToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPClassSpecifierNode >> initialize [
	super initialize.
	colons := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	accessTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CPPClassSpecifierNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CPPClassSpecifierNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CPPClassSpecifierNode >> name [
	^ name
]

{ #category : #generated }
CPPClassSpecifierNode >> name: aCPPProgramNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aCPPProgramNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CPPClassSpecifierNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPClassSpecifierNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPClassSpecifierNode >> nodeVariables [
	^ #(#name #nameSpecifier)
]

{ #category : #generated }
CPPClassSpecifierNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CPPClassSpecifierNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CPPClassSpecifierNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPClassSpecifierNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> structToken [
	^ structToken
]

{ #category : #generated }
CPPClassSpecifierNode >> structToken: aSmaCCToken [
	structToken := aSmaCCToken
]

{ #category : #generated }
CPPClassSpecifierNode >> tokenVariables [
	^ #(#classToken #structToken #unionToken #finalToken #leftBrace #rightBrace)
]

{ #category : #generated }
CPPClassSpecifierNode >> unionToken [
	^ unionToken
]

{ #category : #generated }
CPPClassSpecifierNode >> unionToken: aSmaCCToken [
	unionToken := aSmaCCToken
]
