Class {
	#name : #VBNetPropertyMemberDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'propertyTokens',
		'name',
		'asToken',
		'type',
		'attributeBlocks',
		'leftParen',
		'rightParen',
		'parameters',
		'commas',
		'declarations',
		'endToken',
		'statementSeparator',
		'implementsToken',
		'implements'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPropertyMemberDeclaration: self
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> compositeNodeVariables [
	^ #(#attributeBlocks #parameters #declarations #implements)
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #propertyTokens #commas)
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> declarations [
	^ declarations
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> implements [
	^ implements
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> implements: anOrderedCollection [
	self setParents: self implements to: nil.
	implements := anOrderedCollection.
	self setParents: self implements to: self
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetPropertyMemberDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	propertyTokens := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	implements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> propertyTokens [
	^ propertyTokens
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> propertyTokens: anOrderedCollection [
	propertyTokens := anOrderedCollection
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> tokenVariables [
	^ #(#name #asToken #leftParen #rightParen #endToken #statementSeparator #implementsToken)
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> type [
	^ type
]

{ #category : #generated }
VBNetPropertyMemberDeclarationNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
