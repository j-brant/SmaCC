Class {
	#name : #CPPSimpleDeclarationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'semicolon',
		'declarators',
		'commas',
		'specifiers'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPSimpleDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSimpleDeclaration: self
]

{ #category : #generated }
CPPSimpleDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
CPPSimpleDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPSimpleDeclarationNode >> compositeNodeVariables [
	^ #(#declarators #specifiers)
]

{ #category : #generated }
CPPSimpleDeclarationNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
CPPSimpleDeclarationNode >> declarators [
	^ declarators
]

{ #category : #generated }
CPPSimpleDeclarationNode >> declarators: anOrderedCollection [
	self setParents: self declarators to: nil.
	declarators := anOrderedCollection.
	self setParents: self declarators to: self
]

{ #category : #'generated-initialize-release' }
CPPSimpleDeclarationNode >> initialize [
	super initialize.
	declarators := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPSimpleDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPSimpleDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPSimpleDeclarationNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPSimpleDeclarationNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPSimpleDeclarationNode >> tokenVariables [
	^ #(#semicolon)
]
