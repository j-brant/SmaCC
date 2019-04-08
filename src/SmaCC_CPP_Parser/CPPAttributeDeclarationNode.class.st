Class {
	#name : #CPPAttributeDeclarationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'specifiers',
		'semicolon'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAttributeDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttributeDeclaration: self
]

{ #category : #generated }
CPPAttributeDeclarationNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #'generated-initialize-release' }
CPPAttributeDeclarationNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPAttributeDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPAttributeDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPAttributeDeclarationNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPAttributeDeclarationNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPAttributeDeclarationNode >> tokenVariables [
	^ #(#semicolon)
]
