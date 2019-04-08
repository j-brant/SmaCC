Class {
	#name : #CPPStatementNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'specifiers'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatement: self
]

{ #category : #generated }
CPPStatementNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #'generated-initialize-release' }
CPPStatementNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPStatementNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPStatementNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]
