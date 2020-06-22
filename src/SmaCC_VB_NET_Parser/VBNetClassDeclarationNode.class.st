Class {
	#name : #VBNetClassDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'classTokens',
		'name',
		'implementsTokens',
		'statementSeparators',
		'implementses',
		'commas',
		'declarations',
		'endToken',
		'inheritsToken',
		'inherits',
		'typeParameters',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetClassDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassDeclaration: self
]

{ #category : #generated }
VBNetClassDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetClassDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetClassDeclarationNode >> classTokens [
	^ classTokens
]

{ #category : #generated }
VBNetClassDeclarationNode >> classTokens: anOrderedCollection [
	classTokens := anOrderedCollection
]

{ #category : #generated }
VBNetClassDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetClassDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetClassDeclarationNode >> compositeNodeVariables [
	^ #(#implementses #declarations #attributeBlocks)
]

{ #category : #generated }
VBNetClassDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #classTokens #implementsTokens #statementSeparators #commas)
]

{ #category : #generated }
VBNetClassDeclarationNode >> declarations [
	^ declarations
]

{ #category : #generated }
VBNetClassDeclarationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
VBNetClassDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetClassDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetClassDeclarationNode >> implementsTokens [
	^ implementsTokens
]

{ #category : #generated }
VBNetClassDeclarationNode >> implementsTokens: anOrderedCollection [
	implementsTokens := anOrderedCollection
]

{ #category : #generated }
VBNetClassDeclarationNode >> implementses [
	^ implementses
]

{ #category : #generated }
VBNetClassDeclarationNode >> implementses: anOrderedCollection [
	self setParents: self implementses to: nil.
	implementses := anOrderedCollection.
	self setParents: self implementses to: self
]

{ #category : #generated }
VBNetClassDeclarationNode >> inherits [
	^ inherits
]

{ #category : #generated }
VBNetClassDeclarationNode >> inherits: aVBNetProgramNode [
	self inherits notNil
		ifTrue: [ self inherits parent: nil ].
	inherits := aVBNetProgramNode.
	self inherits notNil
		ifTrue: [ self inherits parent: self ]
]

{ #category : #generated }
VBNetClassDeclarationNode >> inheritsToken [
	^ inheritsToken
]

{ #category : #generated }
VBNetClassDeclarationNode >> inheritsToken: aSmaCCToken [
	inheritsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetClassDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	classTokens := OrderedCollection new: 2.
	implementsTokens := OrderedCollection new: 2.
	statementSeparators := OrderedCollection new: 2.
	implementses := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetClassDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetClassDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetClassDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetClassDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetClassDeclarationNode >> nodeVariables [
	^ #(#inherits #typeParameters)
]

{ #category : #generated }
VBNetClassDeclarationNode >> statementSeparators [
	^ statementSeparators
]

{ #category : #generated }
VBNetClassDeclarationNode >> statementSeparators: anOrderedCollection [
	statementSeparators := anOrderedCollection
]

{ #category : #generated }
VBNetClassDeclarationNode >> tokenVariables [
	^ #(#name #endToken #inheritsToken)
]

{ #category : #generated }
VBNetClassDeclarationNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
VBNetClassDeclarationNode >> typeParameters: aVBNetTypeParameterListNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aVBNetTypeParameterListNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]
