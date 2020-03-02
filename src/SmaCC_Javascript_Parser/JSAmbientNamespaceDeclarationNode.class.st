Class {
	#name : #JSAmbientNamespaceDeclarationNode,
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
JSAmbientNamespaceDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAmbientNamespaceDeclaration: self
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> compositeNodeVariables [
	^ #(#names #elements)
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> compositeTokenVariables [
	^ #(#periodTokens)
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> elements [
	^ elements
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : #'generated-initialize-release' }
JSAmbientNamespaceDeclarationNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	periodTokens := OrderedCollection new: 2.
	elements := OrderedCollection new: 2.
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> names [
	^ names
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> namespaceToken [
	^ namespaceToken
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> namespaceToken: aSmaCCToken [
	namespaceToken := aSmaCCToken
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> periodTokens [
	^ periodTokens
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> periodTokens: anOrderedCollection [
	periodTokens := anOrderedCollection
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JSAmbientNamespaceDeclarationNode >> tokenVariables [
	^ #(#namespaceToken)
]
