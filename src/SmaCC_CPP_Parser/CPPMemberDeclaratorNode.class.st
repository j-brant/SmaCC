Class {
	#name : #CPPMemberDeclaratorNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'declarator',
		'pureSpecifier',
		'virtualSpecifierTokens',
		'initializer',
		'colon',
		'specifiers',
		'name'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPMemberDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMemberDeclarator: self
]

{ #category : #generated }
CPPMemberDeclaratorNode >> colon [
	^ colon
]

{ #category : #generated }
CPPMemberDeclaratorNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CPPMemberDeclaratorNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPMemberDeclaratorNode >> compositeTokenVariables [
	^ #(#virtualSpecifierTokens)
]

{ #category : #generated }
CPPMemberDeclaratorNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPMemberDeclaratorNode >> declarator: aCPPDeclaratorNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPDeclaratorNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPMemberDeclaratorNode >> initialize [
	super initialize.
	virtualSpecifierTokens := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPMemberDeclaratorNode >> initializer [
	^ initializer
]

{ #category : #generated }
CPPMemberDeclaratorNode >> initializer: aCPPProgramNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aCPPProgramNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
CPPMemberDeclaratorNode >> name [
	^ name
]

{ #category : #generated }
CPPMemberDeclaratorNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPMemberDeclaratorNode >> nodeVariables [
	^ #(#declarator #pureSpecifier #initializer)
]

{ #category : #generated }
CPPMemberDeclaratorNode >> pureSpecifier [
	^ pureSpecifier
]

{ #category : #generated }
CPPMemberDeclaratorNode >> pureSpecifier: aCPPEqualInitializerNode [
	self pureSpecifier notNil
		ifTrue: [ self pureSpecifier parent: nil ].
	pureSpecifier := aCPPEqualInitializerNode.
	self pureSpecifier notNil
		ifTrue: [ self pureSpecifier parent: self ]
]

{ #category : #generated }
CPPMemberDeclaratorNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPMemberDeclaratorNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPMemberDeclaratorNode >> tokenVariables [
	^ #(#colon #name)
]

{ #category : #generated }
CPPMemberDeclaratorNode >> virtualSpecifierTokens [
	^ virtualSpecifierTokens
]

{ #category : #generated }
CPPMemberDeclaratorNode >> virtualSpecifierTokens: anOrderedCollection [
	virtualSpecifierTokens := anOrderedCollection
]
