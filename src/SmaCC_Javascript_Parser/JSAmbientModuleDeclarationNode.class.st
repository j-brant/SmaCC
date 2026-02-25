Class {
	#name : 'JSAmbientModuleDeclarationNode',
	#superclass : 'JSProgramNode',
	#instVars : [
		'declareToken',
		'moduleToken',
		'name',
		'leftBrace',
		'elements',
		'rightBrace',
		'namespaceToken'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAmbientModuleDeclaration: self
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> compositeNodeVariables [
	^ #(#elements)
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> declareToken [
	^ declareToken
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> declareToken: aSmaCCToken [
	declareToken := aSmaCCToken
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> elements [
	^ elements
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : 'generated-initialize-release' }
JSAmbientModuleDeclarationNode >> initialize [
	super initialize.
	elements := OrderedCollection new: 2.
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> moduleToken [
	^ moduleToken
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> moduleToken: aSmaCCToken [
	moduleToken := aSmaCCToken
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> name [
	^ name
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> namespaceToken [
	^ namespaceToken
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> namespaceToken: aSmaCCToken [
	namespaceToken := aSmaCCToken
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
JSAmbientModuleDeclarationNode >> tokenVariables [
	^ #(#declareToken #moduleToken #name #namespaceToken)
]
