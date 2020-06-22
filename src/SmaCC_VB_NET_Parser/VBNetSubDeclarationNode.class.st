Class {
	#name : #VBNetSubDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'signature',
		'statements',
		'endToken',
		'subToken',
		'statementSeparator',
		'handlesToken',
		'_handles',
		'commas',
		'implementsToken',
		'implements',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetSubDeclarationNode >> _handles [
	^ _handles
]

{ #category : #generated }
VBNetSubDeclarationNode >> _handles: anOrderedCollection [
	self setParents: self _handles to: nil.
	_handles := anOrderedCollection.
	self setParents: self _handles to: self
]

{ #category : #generated }
VBNetSubDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubDeclaration: self
]

{ #category : #generated }
VBNetSubDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetSubDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetSubDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetSubDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetSubDeclarationNode >> compositeNodeVariables [
	^ #(#statements #_handles #implements #attributeBlocks)
]

{ #category : #generated }
VBNetSubDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #commas)
]

{ #category : #generated }
VBNetSubDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetSubDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetSubDeclarationNode >> handlesToken [
	^ handlesToken
]

{ #category : #generated }
VBNetSubDeclarationNode >> handlesToken: aSmaCCToken [
	handlesToken := aSmaCCToken
]

{ #category : #generated }
VBNetSubDeclarationNode >> implements [
	^ implements
]

{ #category : #generated }
VBNetSubDeclarationNode >> implements: anOrderedCollection [
	self setParents: self implements to: nil.
	implements := anOrderedCollection.
	self setParents: self implements to: self
]

{ #category : #generated }
VBNetSubDeclarationNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
VBNetSubDeclarationNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetSubDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	_handles := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	implements := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetSubDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetSubDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetSubDeclarationNode >> nodeVariables [
	^ #(#signature)
]

{ #category : #generated }
VBNetSubDeclarationNode >> signature [
	^ signature
]

{ #category : #generated }
VBNetSubDeclarationNode >> signature: aVBNetSubSignatureNode [
	self signature notNil
		ifTrue: [ self signature parent: nil ].
	signature := aVBNetSubSignatureNode.
	self signature notNil
		ifTrue: [ self signature parent: self ]
]

{ #category : #generated }
VBNetSubDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetSubDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetSubDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetSubDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetSubDeclarationNode >> subToken [
	^ subToken
]

{ #category : #generated }
VBNetSubDeclarationNode >> subToken: aSmaCCToken [
	subToken := aSmaCCToken
]

{ #category : #generated }
VBNetSubDeclarationNode >> tokenVariables [
	^ #(#endToken #subToken #statementSeparator #handlesToken #implementsToken)
]
