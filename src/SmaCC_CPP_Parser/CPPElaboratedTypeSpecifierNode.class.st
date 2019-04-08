Class {
	#name : #CPPElaboratedTypeSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'classToken',
		'structToken',
		'unionToken',
		'name',
		'nameSpecifier',
		'specifiers',
		'templateIdentifier',
		'templateToken',
		'enumToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitElaboratedTypeSpecifier: self
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> classToken [
	^ classToken
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> enumToken [
	^ enumToken
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> enumToken: aSmaCCToken [
	enumToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPElaboratedTypeSpecifierNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> name [
	^ name
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> nodeVariables [
	^ #(#nameSpecifier #templateIdentifier)
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> structToken [
	^ structToken
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> structToken: aSmaCCToken [
	structToken := aSmaCCToken
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> templateIdentifier [
	^ templateIdentifier
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> templateIdentifier: aCPPTemplateIdentifierNode [
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: nil ].
	templateIdentifier := aCPPTemplateIdentifierNode.
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: self ]
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> tokenVariables [
	^ #(#classToken #structToken #unionToken #name #templateToken #enumToken)
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> unionToken [
	^ unionToken
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> unionToken: aSmaCCToken [
	unionToken := aSmaCCToken
]
