Class {
	#name : #CPPOpaqueEnumDeclarationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'enumToken',
		'classToken',
		'structToken',
		'name',
		'semicolon',
		'colon',
		'specifiers'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOpaqueEnumDeclaration: self
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> classToken [
	^ classToken
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> colon [
	^ colon
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> enumToken [
	^ enumToken
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> enumToken: aSmaCCToken [
	enumToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPOpaqueEnumDeclarationNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> name [
	^ name
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> structToken [
	^ structToken
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> structToken: aSmaCCToken [
	structToken := aSmaCCToken
]

{ #category : #generated }
CPPOpaqueEnumDeclarationNode >> tokenVariables [
	^ #(#enumToken #classToken #structToken #name #semicolon #colon)
]
