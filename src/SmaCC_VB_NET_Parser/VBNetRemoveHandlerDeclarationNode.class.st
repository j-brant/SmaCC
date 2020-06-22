Class {
	#name : #VBNetRemoveHandlerDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'removeHandlerTokens',
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
VBNetRemoveHandlerDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRemoveHandlerDeclaration: self
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> compositeNodeVariables [
	^ #(#parameters #statements #attributeBlocks)
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> compositeTokenVariables [
	^ #(#removeHandlerTokens #commas)
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetRemoveHandlerDeclarationNode >> initialize [
	super initialize.
	removeHandlerTokens := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> removeHandlerTokens [
	^ removeHandlerTokens
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> removeHandlerTokens: anOrderedCollection [
	removeHandlerTokens := anOrderedCollection
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetRemoveHandlerDeclarationNode >> tokenVariables [
	^ #(#leftParen #rightParen #endToken #statementSeparator)
]
