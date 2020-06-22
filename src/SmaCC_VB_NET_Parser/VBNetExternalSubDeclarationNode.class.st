Class {
	#name : #VBNetExternalSubDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'declareToken',
		'subToken',
		'name',
		'libToken',
		'library',
		'statementSeparator',
		'leftParen',
		'parameters',
		'commas',
		'rightParen',
		'aliasToken',
		'alias',
		'charset',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetExternalSubDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExternalSubDeclaration: self
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> alias [
	^ alias
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> alias: aSmaCCToken [
	alias := aSmaCCToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> aliasToken [
	^ aliasToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> aliasToken: aSmaCCToken [
	aliasToken := aSmaCCToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> charset [
	^ charset
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> charset: aSmaCCToken [
	charset := aSmaCCToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> compositeNodeVariables [
	^ #(#parameters #attributeBlocks)
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #commas)
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> declareToken [
	^ declareToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> declareToken: aSmaCCToken [
	declareToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetExternalSubDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> libToken [
	^ libToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> libToken: aSmaCCToken [
	libToken := aSmaCCToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> library [
	^ library
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> library: aSmaCCToken [
	library := aSmaCCToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> subToken [
	^ subToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> subToken: aSmaCCToken [
	subToken := aSmaCCToken
]

{ #category : #generated }
VBNetExternalSubDeclarationNode >> tokenVariables [
	^ #(#declareToken #subToken #name #libToken #library #statementSeparator #leftParen #rightParen #aliasToken #alias #charset)
]
