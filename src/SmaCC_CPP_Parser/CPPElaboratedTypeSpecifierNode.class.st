Class {
	#name : #CPPElaboratedTypeSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'classToken',
		'structToken',
		'unionToken',
		'name',
		'namespaceSpecifier',
		'specifiers',
		'templateIdentifier',
		'templateToken',
		'enumToken'
	],
	#category : #'SmaCC_CPP_Parser'
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
CPPElaboratedTypeSpecifierNode >> namespaceSpecifier [
	^ namespaceSpecifier
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> namespaceSpecifier: aCPPNestedNameSpecifierNode [
	self namespaceSpecifier notNil
		ifTrue: [ self namespaceSpecifier parent: nil ].
	namespaceSpecifier := aCPPNestedNameSpecifierNode.
	self namespaceSpecifier notNil
		ifTrue: [ self namespaceSpecifier parent: self ]
]

{ #category : #generated }
CPPElaboratedTypeSpecifierNode >> nodeVariables [
	^ #(#namespaceSpecifier #templateIdentifier)
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
