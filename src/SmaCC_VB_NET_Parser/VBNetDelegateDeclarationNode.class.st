Class {
	#name : #VBNetDelegateDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'delegateToken',
		'signature',
		'statementSeparator',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetDelegateDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDelegateDeclaration: self
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> compositeNodeVariables [
	^ #(#attributeBlocks)
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers)
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> delegateToken [
	^ delegateToken
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> delegateToken: aSmaCCToken [
	delegateToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetDelegateDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> nodeVariables [
	^ #(#signature)
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> signature [
	^ signature
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> signature: aVBNetProgramNode [
	self signature notNil
		ifTrue: [ self signature parent: nil ].
	signature := aVBNetProgramNode.
	self signature notNil
		ifTrue: [ self signature parent: self ]
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetDelegateDeclarationNode >> tokenVariables [
	^ #(#delegateToken #statementSeparator)
]
