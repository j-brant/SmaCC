Class {
	#name : #VBNetPropertyGetDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'getTokens',
		'statements',
		'endToken',
		'statementSeparator',
		'modifier',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPropertyGetDeclaration: self
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> compositeNodeVariables [
	^ #(#statements #attributeBlocks)
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> compositeTokenVariables [
	^ #(#getTokens)
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> getTokens [
	^ getTokens
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> getTokens: anOrderedCollection [
	getTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
VBNetPropertyGetDeclarationNode >> initialize [
	super initialize.
	getTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> modifier [
	^ modifier
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetPropertyGetDeclarationNode >> tokenVariables [
	^ #(#endToken #statementSeparator #modifier)
]
