Class {
	#name : #VBNetConstantMemberDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'constToken',
		'constants',
		'commas',
		'statementSeparator',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstantMemberDeclaration: self
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> compositeNodeVariables [
	^ #(#constants #attributeBlocks)
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #commas)
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> constToken [
	^ constToken
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> constToken: aSmaCCToken [
	constToken := aSmaCCToken
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> constants [
	^ constants
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> constants: anOrderedCollection [
	self setParents: self constants to: nil.
	constants := anOrderedCollection.
	self setParents: self constants to: self
]

{ #category : #'generated-initialize-release' }
VBNetConstantMemberDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	constants := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetConstantMemberDeclarationNode >> tokenVariables [
	^ #(#constToken #statementSeparator)
]
