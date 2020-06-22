Class {
	#name : #VBNetUsingStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'usingTokens',
		'variables',
		'commas',
		'statements',
		'endToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetUsingStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUsingStatement: self
]

{ #category : #generated }
VBNetUsingStatementNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetUsingStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetUsingStatementNode >> compositeNodeVariables [
	^ #(#variables #statements)
]

{ #category : #generated }
VBNetUsingStatementNode >> compositeTokenVariables [
	^ #(#usingTokens #commas)
]

{ #category : #generated }
VBNetUsingStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetUsingStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetUsingStatementNode >> initialize [
	super initialize.
	usingTokens := OrderedCollection new: 2.
	variables := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetUsingStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetUsingStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetUsingStatementNode >> tokenVariables [
	^ #(#endToken)
]

{ #category : #generated }
VBNetUsingStatementNode >> usingTokens [
	^ usingTokens
]

{ #category : #generated }
VBNetUsingStatementNode >> usingTokens: anOrderedCollection [
	usingTokens := anOrderedCollection
]

{ #category : #generated }
VBNetUsingStatementNode >> variables [
	^ variables
]

{ #category : #generated }
VBNetUsingStatementNode >> variables: anOrderedCollection [
	self setParents: self variables to: nil.
	variables := anOrderedCollection.
	self setParents: self variables to: self
]
