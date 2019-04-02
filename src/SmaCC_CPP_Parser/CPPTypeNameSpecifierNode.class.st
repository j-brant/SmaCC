Class {
	#name : #CPPTypeNameSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'typenameToken',
		'namespaceSpecifier',
		'name',
		'templateIdentifier',
		'templateToken'
	],
	#category : #'SmaCC_CPP_Parser'
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
CPPTypeNameSpecifierNode >> namespaceSpecifier [
	^ namespaceSpecifier
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> namespaceSpecifier: aCPPNestedNameSpecifierNode [
	self namespaceSpecifier notNil
		ifTrue: [ self namespaceSpecifier parent: nil ].
	namespaceSpecifier := aCPPNestedNameSpecifierNode.
	self namespaceSpecifier notNil
		ifTrue: [ self namespaceSpecifier parent: self ]
]

{ #category : #generated }
CPPTypeNameSpecifierNode >> nodeVariables [
	^ #(#namespaceSpecifier #templateIdentifier)
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
