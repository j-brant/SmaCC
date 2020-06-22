Class {
	#name : #VBNetCaseElseStatementNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'caseToken',
		'elseToken',
		'statements',
		'statementSeparator'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetCaseElseStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCaseElseStatement: self
]

{ #category : #generated }
VBNetCaseElseStatementNode >> caseToken [
	^ caseToken
]

{ #category : #generated }
VBNetCaseElseStatementNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : #generated }
VBNetCaseElseStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
VBNetCaseElseStatementNode >> elseToken [
	^ elseToken
]

{ #category : #generated }
VBNetCaseElseStatementNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetCaseElseStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetCaseElseStatementNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetCaseElseStatementNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetCaseElseStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetCaseElseStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetCaseElseStatementNode >> tokenVariables [
	^ #(#caseToken #elseToken #statementSeparator)
]
