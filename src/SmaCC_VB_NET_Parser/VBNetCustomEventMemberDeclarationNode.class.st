Class {
	#name : #VBNetCustomEventMemberDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'customToken',
		'eventTokens',
		'name',
		'asToken',
		'type',
		'eventAccessorDeclarations',
		'endToken',
		'statementSeparators',
		'implementsToken',
		'implements',
		'commas',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCustomEventMemberDeclaration: self
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> compositeNodeVariables [
	^ #(#eventAccessorDeclarations #implements #attributeBlocks)
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #eventTokens #statementSeparators #commas)
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> customToken [
	^ customToken
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> customToken: aSmaCCToken [
	customToken := aSmaCCToken
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> eventAccessorDeclarations [
	^ eventAccessorDeclarations
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> eventAccessorDeclarations: anOrderedCollection [
	self setParents: self eventAccessorDeclarations to: nil.
	eventAccessorDeclarations := anOrderedCollection.
	self setParents: self eventAccessorDeclarations to: self
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> eventTokens [
	^ eventTokens
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> eventTokens: anOrderedCollection [
	eventTokens := anOrderedCollection
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> implements [
	^ implements
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> implements: anOrderedCollection [
	self setParents: self implements to: nil.
	implements := anOrderedCollection.
	self setParents: self implements to: self
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetCustomEventMemberDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	eventTokens := OrderedCollection new: 2.
	eventAccessorDeclarations := OrderedCollection new: 2.
	statementSeparators := OrderedCollection new: 2.
	implements := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> statementSeparators [
	^ statementSeparators
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> statementSeparators: anOrderedCollection [
	statementSeparators := anOrderedCollection
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> tokenVariables [
	^ #(#customToken #name #asToken #endToken #implementsToken)
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> type [
	^ type
]

{ #category : #generated }
VBNetCustomEventMemberDeclarationNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
