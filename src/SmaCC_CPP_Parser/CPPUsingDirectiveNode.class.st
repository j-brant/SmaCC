Class {
	#name : #CPPUsingDirectiveNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'usingToken',
		'namespaceToken',
		'name',
		'semicolon',
		'nameSpecifier',
		'specifiers'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPUsingDirectiveNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUsingDirective: self
]

{ #category : #generated }
CPPUsingDirectiveNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #'generated-initialize-release' }
CPPUsingDirectiveNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPUsingDirectiveNode >> name [
	^ name
]

{ #category : #generated }
CPPUsingDirectiveNode >> name: aCPPIdentifierNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aCPPIdentifierNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CPPUsingDirectiveNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPUsingDirectiveNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPUsingDirectiveNode >> namespaceToken [
	^ namespaceToken
]

{ #category : #generated }
CPPUsingDirectiveNode >> namespaceToken: aSmaCCToken [
	namespaceToken := aSmaCCToken
]

{ #category : #generated }
CPPUsingDirectiveNode >> nodeVariables [
	^ #(#name #nameSpecifier)
]

{ #category : #generated }
CPPUsingDirectiveNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPUsingDirectiveNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPUsingDirectiveNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPUsingDirectiveNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPUsingDirectiveNode >> tokenVariables [
	^ #(#usingToken #namespaceToken #semicolon)
]

{ #category : #generated }
CPPUsingDirectiveNode >> usingToken [
	^ usingToken
]

{ #category : #generated }
CPPUsingDirectiveNode >> usingToken: aSmaCCToken [
	usingToken := aSmaCCToken
]
