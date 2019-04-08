Class {
	#name : #CPPTypeIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'specifiers',
		'declarator'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPTypeIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeIdentifier: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPTypeIdentifierNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPTypeIdentifierNode >> declarator: aCPPProgramNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPProgramNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPTypeIdentifierNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPTypeIdentifierNode >> nodeVariables [
	^ #(#declarator)
]

{ #category : #generated }
CPPTypeIdentifierNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPTypeIdentifierNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]
