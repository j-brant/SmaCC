Class {
	#name : #VBNetLineStatementNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'statementSeparators',
		'statements'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetLineStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLineStatement: self
]

{ #category : #generated }
VBNetLineStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
VBNetLineStatementNode >> compositeTokenVariables [
	^ #(#statementSeparators)
]

{ #category : #'generated-initialize-release' }
VBNetLineStatementNode >> initialize [
	super initialize.
	statementSeparators := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetLineStatementNode >> statementSeparators [
	^ statementSeparators
]

{ #category : #generated }
VBNetLineStatementNode >> statementSeparators: anOrderedCollection [
	statementSeparators := anOrderedCollection
]

{ #category : #generated }
VBNetLineStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetLineStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
