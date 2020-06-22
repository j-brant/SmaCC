Class {
	#name : #VBNetPropertySetDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'setTokens',
		'statements',
		'endToken',
		'statementSeparator',
		'leftParen',
		'rightParen',
		'parameters',
		'commas',
		'modifier',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetPropertySetDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPropertySetDeclaration: self
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> compositeNodeVariables [
	^ #(#statements #parameters #attributeBlocks)
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> compositeTokenVariables [
	^ #(#setTokens #commas)
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetPropertySetDeclarationNode >> initialize [
	super initialize.
	setTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> modifier [
	^ modifier
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> setTokens [
	^ setTokens
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> setTokens: anOrderedCollection [
	setTokens := anOrderedCollection
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetPropertySetDeclarationNode >> tokenVariables [
	^ #(#endToken #statementSeparator #leftParen #rightParen #modifier)
]
