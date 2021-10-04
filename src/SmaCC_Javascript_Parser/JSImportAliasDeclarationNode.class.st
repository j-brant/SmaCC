Class {
	#name : #JSImportAliasDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'importToken',
		'identifier',
		'equalToken',
		'names',
		'periodTokens',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSImportAliasDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportAliasDeclaration: self
]

{ #category : #generated }
JSImportAliasDeclarationNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
JSImportAliasDeclarationNode >> compositeTokenVariables [
	^ #(#periodTokens)
]

{ #category : #generated }
JSImportAliasDeclarationNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
JSImportAliasDeclarationNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
JSImportAliasDeclarationNode >> identifier [
	^ identifier
]

{ #category : #generated }
JSImportAliasDeclarationNode >> identifier: aJSNameExpressionNode [
	self identifier notNil ifTrue: [ self identifier parent: nil ].
	identifier := aJSNameExpressionNode.
	self identifier notNil ifTrue: [ self identifier parent: self ]
]

{ #category : #generated }
JSImportAliasDeclarationNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JSImportAliasDeclarationNode >> importToken [
	^ importToken
]

{ #category : #generated }
JSImportAliasDeclarationNode >> importToken: aSmaCCToken [
	importToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
JSImportAliasDeclarationNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	periodTokens := OrderedCollection new: 2.
]

{ #category : #generated }
JSImportAliasDeclarationNode >> names [
	^ names
]

{ #category : #generated }
JSImportAliasDeclarationNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]

{ #category : #generated }
JSImportAliasDeclarationNode >> nodeVariables [
	^ #(#identifier)
]

{ #category : #generated }
JSImportAliasDeclarationNode >> periodTokens [
	^ periodTokens
]

{ #category : #generated }
JSImportAliasDeclarationNode >> periodTokens: anOrderedCollection [
	periodTokens := anOrderedCollection
]

{ #category : #generated }
JSImportAliasDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSImportAliasDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSImportAliasDeclarationNode >> tokenVariables [
	^ #(#importToken #equalToken)
]
