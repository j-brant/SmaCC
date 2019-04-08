Class {
	#name : #CPPParameterDeclarationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'specifiers',
		'declarator',
		'equal',
		'initializer'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPParameterDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitParameterDeclaration: self
]

{ #category : #generated }
CPPParameterDeclarationNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPParameterDeclarationNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPParameterDeclarationNode >> declarator: aCPPProgramNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPProgramNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #generated }
CPPParameterDeclarationNode >> equal [
	^ equal
]

{ #category : #generated }
CPPParameterDeclarationNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPParameterDeclarationNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPParameterDeclarationNode >> initializer [
	^ initializer
]

{ #category : #generated }
CPPParameterDeclarationNode >> initializer: aCPPProgramNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aCPPProgramNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
CPPParameterDeclarationNode >> nodeVariables [
	^ #(#declarator #initializer)
]

{ #category : #generated }
CPPParameterDeclarationNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPParameterDeclarationNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPParameterDeclarationNode >> tokenVariables [
	^ #(#equal)
]
