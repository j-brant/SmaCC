Class {
	#name : #VBNetInterfaceDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'interfaceTokens',
		'name',
		'inheritsTokens',
		'statementSeparators',
		'inheritses',
		'commas',
		'declarations',
		'endToken',
		'typeParameters',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetInterfaceDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInterfaceDeclaration: self
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> compositeNodeVariables [
	^ #(#inheritses #declarations #attributeBlocks)
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #interfaceTokens #inheritsTokens #statementSeparators #commas)
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> declarations [
	^ declarations
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> inheritsTokens [
	^ inheritsTokens
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> inheritsTokens: anOrderedCollection [
	inheritsTokens := anOrderedCollection
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> inheritses [
	^ inheritses
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> inheritses: anOrderedCollection [
	self setParents: self inheritses to: nil.
	inheritses := anOrderedCollection.
	self setParents: self inheritses to: self
]

{ #category : #'generated-initialize-release' }
VBNetInterfaceDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	interfaceTokens := OrderedCollection new: 2.
	inheritsTokens := OrderedCollection new: 2.
	statementSeparators := OrderedCollection new: 2.
	inheritses := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> interfaceTokens [
	^ interfaceTokens
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> interfaceTokens: anOrderedCollection [
	interfaceTokens := anOrderedCollection
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> nodeVariables [
	^ #(#typeParameters)
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> statementSeparators [
	^ statementSeparators
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> statementSeparators: anOrderedCollection [
	statementSeparators := anOrderedCollection
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> tokenVariables [
	^ #(#name #endToken)
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
VBNetInterfaceDeclarationNode >> typeParameters: aVBNetTypeParameterListNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aVBNetTypeParameterListNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]
