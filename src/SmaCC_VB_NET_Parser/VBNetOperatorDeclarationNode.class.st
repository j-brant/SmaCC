Class {
	#name : #VBNetOperatorDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'operatorTokens',
		'operator',
		'leftParen',
		'parameters',
		'commas',
		'rightParen',
		'statements',
		'endToken',
		'statementSeparator',
		'asToken',
		'type',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetOperatorDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOperatorDeclaration: self
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> compositeNodeVariables [
	^ #(#parameters #statements #attributeBlocks)
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #operatorTokens #commas)
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetOperatorDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	operatorTokens := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> operator [
	^ operator
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> operatorTokens [
	^ operatorTokens
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> operatorTokens: anOrderedCollection [
	operatorTokens := anOrderedCollection
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> tokenVariables [
	^ #(#operator #leftParen #rightParen #endToken #statementSeparator #asToken)
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> type [
	^ type
]

{ #category : #generated }
VBNetOperatorDeclarationNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
