Class {
	#name : #CPPPseudoDestructorNameNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'typeName',
		'colonColon',
		'tilde',
		'name',
		'nameSpecifier',
		'templateToken',
		'templateIdentifier',
		'decltypeSpecifier'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPPseudoDestructorNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPseudoDestructorName: self
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> colonColon [
	^ colonColon
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> colonColon: aSmaCCToken [
	colonColon := aSmaCCToken
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> decltypeSpecifier [
	^ decltypeSpecifier
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> decltypeSpecifier: aCPPDecltypeSpecifierNode [
	self decltypeSpecifier notNil
		ifTrue: [ self decltypeSpecifier parent: nil ].
	decltypeSpecifier := aCPPDecltypeSpecifierNode.
	self decltypeSpecifier notNil
		ifTrue: [ self decltypeSpecifier parent: self ]
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> name [
	^ name
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> name: aCPPProgramNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aCPPProgramNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> nodeVariables [
	^ #(#typeName #name #nameSpecifier #templateIdentifier #decltypeSpecifier)
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> templateIdentifier [
	^ templateIdentifier
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> templateIdentifier: aCPPTemplateIdentifierNode [
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: nil ].
	templateIdentifier := aCPPTemplateIdentifierNode.
	self templateIdentifier notNil
		ifTrue: [ self templateIdentifier parent: self ]
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> tilde [
	^ tilde
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> tilde: aSmaCCToken [
	tilde := aSmaCCToken
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> tokenVariables [
	^ #(#colonColon #tilde #templateToken)
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> typeName [
	^ typeName
]

{ #category : #generated }
CPPPseudoDestructorNameNode >> typeName: aCPPProgramNode [
	self typeName notNil
		ifTrue: [ self typeName parent: nil ].
	typeName := aCPPProgramNode.
	self typeName notNil
		ifTrue: [ self typeName parent: self ]
]
