Class {
	#name : #CPPUsingDeclarationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'usingToken',
		'nameSpecifier',
		'identifier',
		'semicolon',
		'typenameToken',
		'colonColon'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPUsingDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUsingDeclaration: self
]

{ #category : #generated }
CPPUsingDeclarationNode >> colonColon [
	^ colonColon
]

{ #category : #generated }
CPPUsingDeclarationNode >> colonColon: aSmaCCToken [
	colonColon := aSmaCCToken
]

{ #category : #generated }
CPPUsingDeclarationNode >> identifier [
	^ identifier
]

{ #category : #generated }
CPPUsingDeclarationNode >> identifier: aCPPProgramNode [
	self identifier notNil
		ifTrue: [ self identifier parent: nil ].
	identifier := aCPPProgramNode.
	self identifier notNil
		ifTrue: [ self identifier parent: self ]
]

{ #category : #generated }
CPPUsingDeclarationNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPUsingDeclarationNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPUsingDeclarationNode >> nodeVariables [
	^ #(#nameSpecifier #identifier)
]

{ #category : #generated }
CPPUsingDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPUsingDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPUsingDeclarationNode >> tokenVariables [
	^ #(#usingToken #semicolon #typenameToken #colonColon)
]

{ #category : #generated }
CPPUsingDeclarationNode >> typenameToken [
	^ typenameToken
]

{ #category : #generated }
CPPUsingDeclarationNode >> typenameToken: aSmaCCToken [
	typenameToken := aSmaCCToken
]

{ #category : #generated }
CPPUsingDeclarationNode >> usingToken [
	^ usingToken
]

{ #category : #generated }
CPPUsingDeclarationNode >> usingToken: aSmaCCToken [
	usingToken := aSmaCCToken
]
