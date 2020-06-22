Class {
	#name : #VBNetNamespaceDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'namespaceTokens',
		'names',
		'periods',
		'globalToken',
		'declarations',
		'attributeBlocks',
		'endToken',
		'statementSeparators'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetNamespaceDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNamespaceDeclaration: self
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> compositeNodeVariables [
	^ #(#declarations #attributeBlocks)
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> compositeTokenVariables [
	^ #(#namespaceTokens #names #periods #statementSeparators)
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> declarations [
	^ declarations
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> globalToken [
	^ globalToken
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> globalToken: aSmaCCToken [
	globalToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetNamespaceDeclarationNode >> initialize [
	super initialize.
	namespaceTokens := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
	statementSeparators := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> names [
	^ names
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> namespaceTokens [
	^ namespaceTokens
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> namespaceTokens: anOrderedCollection [
	namespaceTokens := anOrderedCollection
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> periods [
	^ periods
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> statementSeparators [
	^ statementSeparators
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> statementSeparators: anOrderedCollection [
	statementSeparators := anOrderedCollection
]

{ #category : #generated }
VBNetNamespaceDeclarationNode >> tokenVariables [
	^ #(#globalToken #endToken)
]
