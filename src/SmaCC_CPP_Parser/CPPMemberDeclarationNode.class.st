Class {
	#name : #CPPMemberDeclarationNode,
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
CPPMemberDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMemberDeclaration: self
]

{ #category : #generated }
CPPMemberDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
CPPMemberDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPMemberDeclarationNode >> compositeNodeVariables [
	^ #(#declarators #specifiers)
]

{ #category : #generated }
CPPMemberDeclarationNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
CPPMemberDeclarationNode >> declarators [
	^ declarators
]

{ #category : #generated }
CPPMemberDeclarationNode >> declarators: anOrderedCollection [
	self setParents: self declarators to: nil.
	declarators := anOrderedCollection.
	self setParents: self declarators to: self
]

{ #category : #'generated-initialize-release' }
CPPMemberDeclarationNode >> initialize [
	super initialize.
	declarators := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPMemberDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPMemberDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPMemberDeclarationNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPMemberDeclarationNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPMemberDeclarationNode >> tokenVariables [
	^ #(#semicolon)
]
