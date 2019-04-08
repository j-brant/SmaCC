Class {
	#name : #CPPMemberDeclaratorNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'declarator',
		'equalToken',
		'value',
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

{ #category : #generated }
CPPMemberDeclaratorNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
CPPMemberDeclaratorNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
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
	^ #(#declarator #value #initializer)
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
	^ #(#equalToken #colon #name)
]

{ #category : #generated }
CPPMemberDeclaratorNode >> value [
	^ value
]

{ #category : #generated }
CPPMemberDeclaratorNode >> value: aCPPNumericLiteralNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aCPPNumericLiteralNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]

{ #category : #generated }
CPPMemberDeclaratorNode >> virtualSpecifierTokens [
	^ virtualSpecifierTokens
]

{ #category : #generated }
CPPMemberDeclaratorNode >> virtualSpecifierTokens: anOrderedCollection [
	virtualSpecifierTokens := anOrderedCollection
]
