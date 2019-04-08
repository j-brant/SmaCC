Class {
	#name : #CPPEnumSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'enumToken',
		'classToken',
		'structToken',
		'colon',
		'specifiers',
		'name',
		'nameSpecifier',
		'leftBrace',
		'rightBrace',
		'definitions',
		'commas'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPEnumSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnumSpecifier: self
]

{ #category : #generated }
CPPEnumSpecifierNode >> classToken [
	^ classToken
]

{ #category : #generated }
CPPEnumSpecifierNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
CPPEnumSpecifierNode >> colon [
	^ colon
]

{ #category : #generated }
CPPEnumSpecifierNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CPPEnumSpecifierNode >> commas [
	^ commas
]

{ #category : #generated }
CPPEnumSpecifierNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPEnumSpecifierNode >> compositeNodeVariables [
	^ #(#specifiers #definitions)
]

{ #category : #generated }
CPPEnumSpecifierNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
CPPEnumSpecifierNode >> definitions [
	^ definitions
]

{ #category : #generated }
CPPEnumSpecifierNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
CPPEnumSpecifierNode >> enumToken [
	^ enumToken
]

{ #category : #generated }
CPPEnumSpecifierNode >> enumToken: aSmaCCToken [
	enumToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPEnumSpecifierNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
	definitions := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPEnumSpecifierNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CPPEnumSpecifierNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CPPEnumSpecifierNode >> name [
	^ name
]

{ #category : #generated }
CPPEnumSpecifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPEnumSpecifierNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPEnumSpecifierNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPEnumSpecifierNode >> nodeVariables [
	^ #(#nameSpecifier)
]

{ #category : #generated }
CPPEnumSpecifierNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CPPEnumSpecifierNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CPPEnumSpecifierNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPEnumSpecifierNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPEnumSpecifierNode >> structToken [
	^ structToken
]

{ #category : #generated }
CPPEnumSpecifierNode >> structToken: aSmaCCToken [
	structToken := aSmaCCToken
]

{ #category : #generated }
CPPEnumSpecifierNode >> tokenVariables [
	^ #(#enumToken #classToken #structToken #colon #name #leftBrace #rightBrace)
]
