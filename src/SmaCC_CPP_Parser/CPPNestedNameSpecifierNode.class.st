Class {
	#name : #CPPNestedNameSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'colonColon',
		'type',
		'nameSpecifier',
		'name',
		'templateIdentifier',
		'templateToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPNestedNameSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNestedNameSpecifier: self
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> colonColon [
	^ colonColon
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> colonColon: aSmaCCToken [
	colonColon := aSmaCCToken
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> name [
	^ name
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> nodeVariables [
	^ #(#type #nameSpecifier #templateIdentifier)
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> templateIdentifier [
	^ templateIdentifier
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> templateIdentifier: aCPPTemplateIdentifierNode [
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: nil ].
	templateIdentifier := aCPPTemplateIdentifierNode.
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: self ]
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> tokenVariables [
	^ #(#colonColon #name #templateToken)
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> type [
	^ type
]

{ #category : #generated }
CPPNestedNameSpecifierNode >> type: aCPPProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCPPProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
