Class {
	#name : #VBNetExternalFunctionDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'declareToken',
		'functionToken',
		'name',
		'libToken',
		'library',
		'asToken',
		'type',
		'attributeBlocks',
		'statementSeparator',
		'leftParen',
		'parameters',
		'commas',
		'rightParen',
		'aliasToken',
		'alias',
		'charset'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExternalFunctionDeclaration: self
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> alias [
	^ alias
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> alias: aSmaCCToken [
	alias := aSmaCCToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> aliasToken [
	^ aliasToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> aliasToken: aSmaCCToken [
	aliasToken := aSmaCCToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> charset [
	^ charset
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> charset: aSmaCCToken [
	charset := aSmaCCToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> compositeNodeVariables [
	^ #(#attributeBlocks #parameters)
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #commas)
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> declareToken [
	^ declareToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> declareToken: aSmaCCToken [
	declareToken := aSmaCCToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> functionToken [
	^ functionToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> functionToken: aSmaCCToken [
	functionToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetExternalFunctionDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> libToken [
	^ libToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> libToken: aSmaCCToken [
	libToken := aSmaCCToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> library [
	^ library
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> library: aSmaCCToken [
	library := aSmaCCToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> tokenVariables [
	^ #(#declareToken #functionToken #name #libToken #library #asToken #statementSeparator #leftParen #rightParen #aliasToken #alias #charset)
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> type [
	^ type
]

{ #category : #generated }
VBNetExternalFunctionDeclarationNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
