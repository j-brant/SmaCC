Class {
	#name : #JSImportDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'importToken',
		'imports',
		'comma',
		'typeToken',
		'fromToken',
		'from',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSImportDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportDeclaration: self
]

{ #category : #generated }
JSImportDeclarationNode >> comma [
	^ comma
]

{ #category : #generated }
JSImportDeclarationNode >> comma: aSmaCCToken [
	comma := aSmaCCToken
]

{ #category : #generated }
JSImportDeclarationNode >> compositeNodeVariables [
	^ #(#imports)
]

{ #category : #generated }
JSImportDeclarationNode >> from [
	^ from
]

{ #category : #generated }
JSImportDeclarationNode >> from: aSmaCCToken [
	from := aSmaCCToken
]

{ #category : #generated }
JSImportDeclarationNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
JSImportDeclarationNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #generated }
JSImportDeclarationNode >> ignoredTokenVariables [
	^ #(#comma #semicolon)
]

{ #category : #generated }
JSImportDeclarationNode >> importToken [
	^ importToken
]

{ #category : #generated }
JSImportDeclarationNode >> importToken: aSmaCCToken [
	importToken := aSmaCCToken
]

{ #category : #generated }
JSImportDeclarationNode >> imports [
	^ imports
]

{ #category : #generated }
JSImportDeclarationNode >> imports: anOrderedCollection [
	self setParents: self imports to: nil.
	imports := anOrderedCollection.
	self setParents: self imports to: self
]

{ #category : #'generated-initialize-release' }
JSImportDeclarationNode >> initialize [
	super initialize.
	imports := OrderedCollection new: 2.
]

{ #category : #generated }
JSImportDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSImportDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSImportDeclarationNode >> tokenVariables [
	^ #(#importToken #typeToken #fromToken #from)
]

{ #category : #generated }
JSImportDeclarationNode >> typeToken [
	^ typeToken
]

{ #category : #generated }
JSImportDeclarationNode >> typeToken: aSmaCCToken [
	typeToken := aSmaCCToken
]
