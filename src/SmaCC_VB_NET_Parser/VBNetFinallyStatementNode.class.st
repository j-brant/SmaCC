Class {
	#name : #VBNetFinallyStatementNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'finallyToken',
		'statements'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetFinallyStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFinallyStatement: self
]

{ #category : #generated }
VBNetFinallyStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
VBNetFinallyStatementNode >> finallyToken [
	^ finallyToken
]

{ #category : #generated }
VBNetFinallyStatementNode >> finallyToken: aSmaCCToken [
	finallyToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetFinallyStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetFinallyStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetFinallyStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetFinallyStatementNode >> tokenVariables [
	^ #(#finallyToken)
]
