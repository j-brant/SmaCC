Class {
	#name : #CPPAliasDeclarationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'usingToken',
		'name',
		'equal',
		'type',
		'semicolon',
		'specifiers'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAliasDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAliasDeclaration: self
]

{ #category : #generated }
CPPAliasDeclarationNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPAliasDeclarationNode >> equal [
	^ equal
]

{ #category : #generated }
CPPAliasDeclarationNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPAliasDeclarationNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPAliasDeclarationNode >> name [
	^ name
]

{ #category : #generated }
CPPAliasDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPAliasDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CPPAliasDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPAliasDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPAliasDeclarationNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPAliasDeclarationNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPAliasDeclarationNode >> tokenVariables [
	^ #(#usingToken #name #equal #semicolon)
]

{ #category : #generated }
CPPAliasDeclarationNode >> type [
	^ type
]

{ #category : #generated }
CPPAliasDeclarationNode >> type: aCPPTypeIdentifierNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCPPTypeIdentifierNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
CPPAliasDeclarationNode >> usingToken [
	^ usingToken
]

{ #category : #generated }
CPPAliasDeclarationNode >> usingToken: aSmaCCToken [
	usingToken := aSmaCCToken
]
