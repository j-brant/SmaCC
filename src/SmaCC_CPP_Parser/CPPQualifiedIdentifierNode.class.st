Class {
	#name : #CPPQualifiedIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'nameSpecifier',
		'templateIdentifier',
		'templateToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPQualifiedIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQualifiedIdentifier: self
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> nodeVariables [
	^ #(#nameSpecifier #templateIdentifier)
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> templateIdentifier [
	^ templateIdentifier
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> templateIdentifier: aCPPProgramNode [
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: nil ].
	templateIdentifier := aCPPProgramNode.
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: self ]
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPQualifiedIdentifierNode >> tokenVariables [
	^ #(#templateToken)
]
