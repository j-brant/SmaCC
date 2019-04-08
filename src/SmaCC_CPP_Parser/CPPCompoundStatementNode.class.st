Class {
	#name : #CPPCompoundStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'leftBrace',
		'rightBrace',
		'statements'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPCompoundStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCompoundStatement: self
]

{ #category : #generated }
CPPCompoundStatementNode >> compositeNodeVariables [
	^ #(#statements #specifiers)
]

{ #category : #'generated-initialize-release' }
CPPCompoundStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
CPPCompoundStatementNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CPPCompoundStatementNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CPPCompoundStatementNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CPPCompoundStatementNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CPPCompoundStatementNode >> statements [
	^ statements
]

{ #category : #generated }
CPPCompoundStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
CPPCompoundStatementNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
