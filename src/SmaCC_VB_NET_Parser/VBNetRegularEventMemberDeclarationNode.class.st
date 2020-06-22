Class {
	#name : #VBNetRegularEventMemberDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'eventToken',
		'name',
		'leftParen',
		'rightParen',
		'parameters',
		'commas',
		'asToken',
		'type',
		'statementSeparator',
		'implementsToken',
		'implements',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRegularEventMemberDeclaration: self
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> compositeNodeVariables [
	^ #(#parameters #implements #attributeBlocks)
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #commas)
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> eventToken [
	^ eventToken
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> eventToken: aSmaCCToken [
	eventToken := aSmaCCToken
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> implements [
	^ implements
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> implements: anOrderedCollection [
	self setParents: self implements to: nil.
	implements := anOrderedCollection.
	self setParents: self implements to: self
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetRegularEventMemberDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	implements := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> tokenVariables [
	^ #(#eventToken #name #leftParen #rightParen #asToken #statementSeparator #implementsToken)
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> type [
	^ type
]

{ #category : #generated }
VBNetRegularEventMemberDeclarationNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
