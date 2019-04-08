Class {
	#name : #CPPTemplateTypeNode,
	#superclass : #CPPTypeNode,
	#instVars : [
		'nameSpecifier',
		'templateToken',
		'templateIdentifier'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPTemplateTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTemplateType: self
]

{ #category : #generated }
CPPTemplateTypeNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPTemplateTypeNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPTemplateTypeNode >> nodeVariables [
	^ #(#nameSpecifier #templateIdentifier)
]

{ #category : #generated }
CPPTemplateTypeNode >> templateIdentifier [
	^ templateIdentifier
]

{ #category : #generated }
CPPTemplateTypeNode >> templateIdentifier: aCPPTemplateIdentifierNode [
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: nil ].
	templateIdentifier := aCPPTemplateIdentifierNode.
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: self ]
]

{ #category : #generated }
CPPTemplateTypeNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPTemplateTypeNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPTemplateTypeNode >> tokenVariables [
	^ #(#templateToken)
]
