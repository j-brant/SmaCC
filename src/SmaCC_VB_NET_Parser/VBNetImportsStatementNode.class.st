Class {
	#name : #VBNetImportsStatementNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'importsToken',
		'imports',
		'commas',
		'statementSeparator'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetImportsStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportsStatement: self
]

{ #category : #generated }
VBNetImportsStatementNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetImportsStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetImportsStatementNode >> compositeNodeVariables [
	^ #(#imports)
]

{ #category : #generated }
VBNetImportsStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
VBNetImportsStatementNode >> imports [
	^ imports
]

{ #category : #generated }
VBNetImportsStatementNode >> imports: anOrderedCollection [
	self setParents: self imports to: nil.
	imports := anOrderedCollection.
	self setParents: self imports to: self
]

{ #category : #generated }
VBNetImportsStatementNode >> importsToken [
	^ importsToken
]

{ #category : #generated }
VBNetImportsStatementNode >> importsToken: aSmaCCToken [
	importsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetImportsStatementNode >> initialize [
	super initialize.
	imports := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetImportsStatementNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetImportsStatementNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetImportsStatementNode >> tokenVariables [
	^ #(#importsToken #statementSeparator)
]
