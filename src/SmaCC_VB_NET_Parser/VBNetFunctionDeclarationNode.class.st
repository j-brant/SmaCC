Class {
	#name : #VBNetFunctionDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'signature',
		'statements',
		'endToken',
		'functionToken',
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
VBNetFunctionDeclarationNode >> _handles [
	^ _handles
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> _handles: anOrderedCollection [
	self setParents: self _handles to: nil.
	_handles := anOrderedCollection.
	self setParents: self _handles to: self
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionDeclaration: self
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> compositeNodeVariables [
	^ #(#statements #_handles #implements #attributeBlocks)
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #commas)
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> functionToken [
	^ functionToken
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> functionToken: aSmaCCToken [
	functionToken := aSmaCCToken
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> handlesToken [
	^ handlesToken
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> handlesToken: aSmaCCToken [
	handlesToken := aSmaCCToken
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> implements [
	^ implements
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> implements: anOrderedCollection [
	self setParents: self implements to: nil.
	implements := anOrderedCollection.
	self setParents: self implements to: self
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetFunctionDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	_handles := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	implements := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> nodeVariables [
	^ #(#signature)
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> signature [
	^ signature
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> signature: aVBNetFunctionSignatureNode [
	self signature notNil
		ifTrue: [ self signature parent: nil ].
	signature := aVBNetFunctionSignatureNode.
	self signature notNil
		ifTrue: [ self signature parent: self ]
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetFunctionDeclarationNode >> tokenVariables [
	^ #(#endToken #functionToken #statementSeparator #handlesToken #implementsToken)
]
