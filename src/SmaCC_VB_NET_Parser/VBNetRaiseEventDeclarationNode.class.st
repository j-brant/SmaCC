Class {
	#name : #VBNetRaiseEventDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'raiseEventTokens',
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
VBNetRaiseEventDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRaiseEventDeclaration: self
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> compositeNodeVariables [
	^ #(#parameters #statements #attributeBlocks)
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> compositeTokenVariables [
	^ #(#raiseEventTokens #commas)
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetRaiseEventDeclarationNode >> initialize [
	super initialize.
	raiseEventTokens := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> raiseEventTokens [
	^ raiseEventTokens
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> raiseEventTokens: anOrderedCollection [
	raiseEventTokens := anOrderedCollection
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetRaiseEventDeclarationNode >> tokenVariables [
	^ #(#leftParen #rightParen #endToken #statementSeparator)
]
