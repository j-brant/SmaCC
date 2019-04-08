Class {
	#name : #CPPNewTypeIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'specifiers',
		'declarator'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPNewTypeIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNewTypeIdentifier: self
]

{ #category : #generated }
CPPNewTypeIdentifierNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPNewTypeIdentifierNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPNewTypeIdentifierNode >> declarator: aCPPNewDeclaratorNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPNewDeclaratorNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPNewTypeIdentifierNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPNewTypeIdentifierNode >> nodeVariables [
	^ #(#declarator)
]

{ #category : #generated }
CPPNewTypeIdentifierNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPNewTypeIdentifierNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]
