Class {
	#name : #JSNamespaceDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'namespaceToken',
		'names',
		'periodTokens',
		'leftBrace',
		'elements',
		'rightBrace'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSNamespaceDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNamespaceDeclaration: self
]

{ #category : #generated }
JSNamespaceDeclarationNode >> compositeNodeVariables [
	^ #(#names #elements)
]

{ #category : #generated }
JSNamespaceDeclarationNode >> compositeTokenVariables [
	^ #(#periodTokens)
]

{ #category : #generated }
JSNamespaceDeclarationNode >> elements [
	^ elements
]

{ #category : #generated }
JSNamespaceDeclarationNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #generated }
JSNamespaceDeclarationNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : #'generated-initialize-release' }
JSNamespaceDeclarationNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	periodTokens := OrderedCollection new: 2.
	elements := OrderedCollection new: 2.
]

{ #category : #generated }
JSNamespaceDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JSNamespaceDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JSNamespaceDeclarationNode >> names [
	^ names
]

{ #category : #generated }
JSNamespaceDeclarationNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]

{ #category : #generated }
JSNamespaceDeclarationNode >> namespaceToken [
	^ namespaceToken
]

{ #category : #generated }
JSNamespaceDeclarationNode >> namespaceToken: aSmaCCToken [
	namespaceToken := aSmaCCToken
]

{ #category : #generated }
JSNamespaceDeclarationNode >> periodTokens [
	^ periodTokens
]

{ #category : #generated }
JSNamespaceDeclarationNode >> periodTokens: anOrderedCollection [
	periodTokens := anOrderedCollection
]

{ #category : #generated }
JSNamespaceDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JSNamespaceDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JSNamespaceDeclarationNode >> tokenVariables [
	^ #(#namespaceToken)
]
