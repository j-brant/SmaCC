Class {
	#name : #CPPForRangeDeclarationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'specifiers',
		'declarator'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPForRangeDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitForRangeDeclaration: self
]

{ #category : #generated }
CPPForRangeDeclarationNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPForRangeDeclarationNode >> declarator: anOrderedCollection [
	declarator := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CPPForRangeDeclarationNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPForRangeDeclarationNode >> otherVariables [
	^ #(#specifiers #declarator)
]

{ #category : #generated }
CPPForRangeDeclarationNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPForRangeDeclarationNode >> specifiers: anOrderedCollection [
	specifiers := anOrderedCollection
]
