Class {
	#name : #VBNetConstructorMemberDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'subTokens',
		'newToken',
		'statements',
		'endToken',
		'statementSeparator',
		'leftParen',
		'rightParen',
		'parameters',
		'commas',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstructorMemberDeclaration: self
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> compositeNodeVariables [
	^ #(#statements #parameters #attributeBlocks)
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #subTokens #commas)
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetConstructorMemberDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	subTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> newToken [
	^ newToken
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> newToken: aSmaCCToken [
	newToken := aSmaCCToken
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> subTokens [
	^ subTokens
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> subTokens: anOrderedCollection [
	subTokens := anOrderedCollection
]

{ #category : #generated }
VBNetConstructorMemberDeclarationNode >> tokenVariables [
	^ #(#newToken #endToken #statementSeparator #leftParen #rightParen)
]
