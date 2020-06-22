Class {
	#name : #VBNetCaseStatementNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'caseToken',
		'clauses',
		'commas',
		'statements',
		'statementSeparator'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetCaseStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCaseStatement: self
]

{ #category : #generated }
VBNetCaseStatementNode >> caseToken [
	^ caseToken
]

{ #category : #generated }
VBNetCaseStatementNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : #generated }
VBNetCaseStatementNode >> clauses [
	^ clauses
]

{ #category : #generated }
VBNetCaseStatementNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
VBNetCaseStatementNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetCaseStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetCaseStatementNode >> compositeNodeVariables [
	^ #(#clauses #statements)
]

{ #category : #generated }
VBNetCaseStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetCaseStatementNode >> initialize [
	super initialize.
	clauses := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetCaseStatementNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetCaseStatementNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetCaseStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetCaseStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetCaseStatementNode >> tokenVariables [
	^ #(#caseToken #statementSeparator)
]
