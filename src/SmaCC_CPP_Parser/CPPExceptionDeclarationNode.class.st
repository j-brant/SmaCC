Class {
	#name : #CPPExceptionDeclarationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'specifiers',
		'declarator',
		'ellipsis'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPExceptionDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExceptionDeclaration: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPExceptionDeclarationNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPExceptionDeclarationNode >> declarator: aCPPProgramNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPProgramNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #generated }
CPPExceptionDeclarationNode >> ellipsis [
	^ ellipsis
]

{ #category : #generated }
CPPExceptionDeclarationNode >> ellipsis: aSmaCCToken [
	ellipsis := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPExceptionDeclarationNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPExceptionDeclarationNode >> nodeVariables [
	^ #(#declarator)
]

{ #category : #generated }
CPPExceptionDeclarationNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPExceptionDeclarationNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> tokenVariables [
	^ #(#ellipsis)
]
