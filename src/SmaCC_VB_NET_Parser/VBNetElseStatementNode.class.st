Class {
	#name : #VBNetElseStatementNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'elseToken',
		'statements',
		'statementSeparator'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetElseStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitElseStatement: self
]

{ #category : #generated }
VBNetElseStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
VBNetElseStatementNode >> elseToken [
	^ elseToken
]

{ #category : #generated }
VBNetElseStatementNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetElseStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetElseStatementNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetElseStatementNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetElseStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetElseStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetElseStatementNode >> tokenVariables [
	^ #(#elseToken #statementSeparator)
]
