Class {
	#name : #VBNetEnumDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'enumTokens',
		'name',
		'declarations',
		'endToken',
		'statementSeparators',
		'asToken',
		'type',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetEnumDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnumDeclaration: self
]

{ #category : #generated }
VBNetEnumDeclarationNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetEnumDeclarationNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetEnumDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetEnumDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetEnumDeclarationNode >> compositeNodeVariables [
	^ #(#declarations #attributeBlocks)
]

{ #category : #generated }
VBNetEnumDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #enumTokens #statementSeparators)
]

{ #category : #generated }
VBNetEnumDeclarationNode >> declarations [
	^ declarations
]

{ #category : #generated }
VBNetEnumDeclarationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
VBNetEnumDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetEnumDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetEnumDeclarationNode >> enumTokens [
	^ enumTokens
]

{ #category : #generated }
VBNetEnumDeclarationNode >> enumTokens: anOrderedCollection [
	enumTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
VBNetEnumDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	enumTokens := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	statementSeparators := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetEnumDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetEnumDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetEnumDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetEnumDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetEnumDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetEnumDeclarationNode >> statementSeparators [
	^ statementSeparators
]

{ #category : #generated }
VBNetEnumDeclarationNode >> statementSeparators: anOrderedCollection [
	statementSeparators := anOrderedCollection
]

{ #category : #generated }
VBNetEnumDeclarationNode >> tokenVariables [
	^ #(#name #endToken #asToken)
]

{ #category : #generated }
VBNetEnumDeclarationNode >> type [
	^ type
]

{ #category : #generated }
VBNetEnumDeclarationNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
