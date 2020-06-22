Class {
	#name : #VBNetAddHandlerDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'addHandlerTokens',
		'leftParen',
		'parameters',
		'commas',
		'rightParen',
		'statements',
		'endToken',
		'statementSeparator',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAddHandlerDeclaration: self
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> addHandlerTokens [
	^ addHandlerTokens
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> addHandlerTokens: anOrderedCollection [
	addHandlerTokens := anOrderedCollection
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> compositeNodeVariables [
	^ #(#parameters #statements #attributeBlocks)
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> compositeTokenVariables [
	^ #(#addHandlerTokens #commas)
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetAddHandlerDeclarationNode >> initialize [
	super initialize.
	addHandlerTokens := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetAddHandlerDeclarationNode >> tokenVariables [
	^ #(#leftParen #rightParen #endToken #statementSeparator)
]
