Class {
	#name : #CPPTypeNameSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'typenameToken',
		'nameSpecifier',
		'name',
		'templateIdentifier',
		'templateToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPTypeNameSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeNameSpecifier: self
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> name [
	^ name
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> nodeVariables [
	^ #(#nameSpecifier #templateIdentifier)
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> templateIdentifier [
	^ templateIdentifier
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> templateIdentifier: aCPPTemplateIdentifierNode [
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: nil ].
	templateIdentifier := aCPPTemplateIdentifierNode.
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: self ]
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> tokenVariables [
	^ #(#typenameToken #name #templateToken)
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> typenameToken [
	^ typenameToken
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> typenameToken: aSmaCCToken [
	typenameToken := aSmaCCToken
]
