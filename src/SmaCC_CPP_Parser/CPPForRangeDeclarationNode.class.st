Class {
	#name : #CPPForRangeDeclarationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'specifiers',
		'declarator'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPForRangeDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitForRangeDeclaration: self
]

{ #category : #generated }
CPPForRangeDeclarationNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPForRangeDeclarationNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPForRangeDeclarationNode >> declarator: aCPPDeclaratorNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPDeclaratorNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPForRangeDeclarationNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPForRangeDeclarationNode >> nodeVariables [
	^ #(#declarator)
]

{ #category : #generated }
CPPForRangeDeclarationNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPForRangeDeclarationNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]
