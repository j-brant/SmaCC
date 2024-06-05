Class {
	#name : #PyPrintStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'printToken',
		'expressions',
		'commaTokens',
		'gtgtToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyPrintStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitPrintStatement: self
]

{ #category : #generated }
PyPrintStatementNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyPrintStatementNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyPrintStatementNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
PyPrintStatementNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyPrintStatementNode >> expressions [
	^ expressions
]

{ #category : #generated }
PyPrintStatementNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #generated }
PyPrintStatementNode >> gtgtToken [
	^ gtgtToken
]

{ #category : #generated }
PyPrintStatementNode >> gtgtToken: aSmaCCToken [
	gtgtToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyPrintStatementNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyPrintStatementNode >> printToken [
	^ printToken
]

{ #category : #generated }
PyPrintStatementNode >> printToken: aSmaCCToken [
	printToken := aSmaCCToken
]

{ #category : #generated }
PyPrintStatementNode >> tokenVariables [
	^ #(#printToken #gtgtToken #semicolonToken)
]
