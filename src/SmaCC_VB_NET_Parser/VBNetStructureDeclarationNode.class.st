Class {
	#name : #VBNetStructureDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'structureTokens',
		'name',
		'implementsTokens',
		'statementSeparators',
		'implementses',
		'commas',
		'declarations',
		'endToken',
		'typeParameters',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetStructureDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStructureDeclaration: self
]

{ #category : #generated }
VBNetStructureDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetStructureDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetStructureDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetStructureDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetStructureDeclarationNode >> compositeNodeVariables [
	^ #(#implementses #declarations #attributeBlocks)
]

{ #category : #generated }
VBNetStructureDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #structureTokens #implementsTokens #statementSeparators #commas)
]

{ #category : #generated }
VBNetStructureDeclarationNode >> declarations [
	^ declarations
]

{ #category : #generated }
VBNetStructureDeclarationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
VBNetStructureDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetStructureDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetStructureDeclarationNode >> implementsTokens [
	^ implementsTokens
]

{ #category : #generated }
VBNetStructureDeclarationNode >> implementsTokens: anOrderedCollection [
	implementsTokens := anOrderedCollection
]

{ #category : #generated }
VBNetStructureDeclarationNode >> implementses [
	^ implementses
]

{ #category : #generated }
VBNetStructureDeclarationNode >> implementses: anOrderedCollection [
	self setParents: self implementses to: nil.
	implementses := anOrderedCollection.
	self setParents: self implementses to: self
]

{ #category : #'generated-initialize-release' }
VBNetStructureDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	structureTokens := OrderedCollection new: 2.
	implementsTokens := OrderedCollection new: 2.
	statementSeparators := OrderedCollection new: 2.
	implementses := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetStructureDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetStructureDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetStructureDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetStructureDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetStructureDeclarationNode >> nodeVariables [
	^ #(#typeParameters)
]

{ #category : #generated }
VBNetStructureDeclarationNode >> statementSeparators [
	^ statementSeparators
]

{ #category : #generated }
VBNetStructureDeclarationNode >> statementSeparators: anOrderedCollection [
	statementSeparators := anOrderedCollection
]

{ #category : #generated }
VBNetStructureDeclarationNode >> structureTokens [
	^ structureTokens
]

{ #category : #generated }
VBNetStructureDeclarationNode >> structureTokens: anOrderedCollection [
	structureTokens := anOrderedCollection
]

{ #category : #generated }
VBNetStructureDeclarationNode >> tokenVariables [
	^ #(#name #endToken)
]

{ #category : #generated }
VBNetStructureDeclarationNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
VBNetStructureDeclarationNode >> typeParameters: aVBNetTypeParameterListNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aVBNetTypeParameterListNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]
