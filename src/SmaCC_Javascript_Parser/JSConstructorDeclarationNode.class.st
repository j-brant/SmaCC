Class {
	#name : #JSConstructorDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'decorators',
		'constructorToken',
		'signature',
		'leftBrace',
		'statements',
		'rightBrace',
		'modifier',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSConstructorDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstructorDeclaration: self
]

{ #category : #generated }
JSConstructorDeclarationNode >> compositeNodeVariables [
	^ #(#decorators #statements)
]

{ #category : #generated }
JSConstructorDeclarationNode >> constructorToken [
	^ constructorToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> constructorToken: aSmaCCToken [
	constructorToken := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> decorators [
	^ decorators
]

{ #category : #generated }
JSConstructorDeclarationNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
]

{ #category : #generated }
JSConstructorDeclarationNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace #semicolon)
]

{ #category : #'generated-initialize-release' }
JSConstructorDeclarationNode >> initialize [
	super initialize.
	decorators := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
JSConstructorDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JSConstructorDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> modifier [
	^ modifier
]

{ #category : #generated }
JSConstructorDeclarationNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> nodeVariables [
	^ #(#signature)
]

{ #category : #generated }
JSConstructorDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JSConstructorDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSConstructorDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSConstructorDeclarationNode >> signature [
	^ signature
]

{ #category : #generated }
JSConstructorDeclarationNode >> signature: aJSCallSignatureNode [
	self signature notNil ifTrue: [ self signature parent: nil ].
	signature := aJSCallSignatureNode.
	self signature notNil ifTrue: [ self signature parent: self ]
]

{ #category : #generated }
JSConstructorDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
JSConstructorDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
JSConstructorDeclarationNode >> tokenVariables [
	^ #(#constructorToken #modifier)
]
