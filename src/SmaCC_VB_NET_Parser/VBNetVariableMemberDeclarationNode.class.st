Class {
	#name : #VBNetVariableMemberDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'variables',
		'commas',
		'statementSeparator',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariableMemberDeclaration: self
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> compositeNodeVariables [
	^ #(#variables #attributeBlocks)
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #commas)
]

{ #category : #'generated-initialize-release' }
VBNetVariableMemberDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	variables := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> tokenVariables [
	^ #(#statementSeparator)
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> variables [
	^ variables
]

{ #category : #generated }
VBNetVariableMemberDeclarationNode >> variables: anOrderedCollection [
	self setParents: self variables to: nil.
	variables := anOrderedCollection.
	self setParents: self variables to: self
]
