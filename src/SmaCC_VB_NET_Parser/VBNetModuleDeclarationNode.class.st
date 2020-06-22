Class {
	#name : #VBNetModuleDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'moduleTokens',
		'name',
		'declarations',
		'endToken',
		'statementSeparators',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetModuleDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitModuleDeclaration: self
]

{ #category : #generated }
VBNetModuleDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetModuleDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetModuleDeclarationNode >> compositeNodeVariables [
	^ #(#declarations #attributeBlocks)
]

{ #category : #generated }
VBNetModuleDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #moduleTokens #statementSeparators)
]

{ #category : #generated }
VBNetModuleDeclarationNode >> declarations [
	^ declarations
]

{ #category : #generated }
VBNetModuleDeclarationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
VBNetModuleDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetModuleDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetModuleDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	moduleTokens := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	statementSeparators := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetModuleDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetModuleDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetModuleDeclarationNode >> moduleTokens [
	^ moduleTokens
]

{ #category : #generated }
VBNetModuleDeclarationNode >> moduleTokens: anOrderedCollection [
	moduleTokens := anOrderedCollection
]

{ #category : #generated }
VBNetModuleDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetModuleDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetModuleDeclarationNode >> statementSeparators [
	^ statementSeparators
]

{ #category : #generated }
VBNetModuleDeclarationNode >> statementSeparators: anOrderedCollection [
	statementSeparators := anOrderedCollection
]

{ #category : #generated }
VBNetModuleDeclarationNode >> tokenVariables [
	^ #(#name #endToken)
]
