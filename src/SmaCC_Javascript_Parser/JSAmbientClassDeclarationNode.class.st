Class {
	#name : #JSAmbientClassDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'classToken',
		'name',
		'extendsToken',
		'superclass',
		'implementsToken',
		'types',
		'commas',
		'leftBrace',
		'elements',
		'rightBrace',
		'typeParameters'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAmbientClassDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAmbientClassDeclaration: self
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> classToken [
	^ classToken
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> compositeNodeVariables [
	^ #(#types #elements)
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> elements [
	^ elements
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> extendsToken [
	^ extendsToken
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> extendsToken: aSmaCCToken [
	extendsToken := aSmaCCToken
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
JSAmbientClassDeclarationNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	elements := OrderedCollection new: 2.
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> name [
	^ name
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> name: aJSNameExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> nodeVariables [
	^ #(#name #superclass #typeParameters)
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> superclass [
	^ superclass
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> superclass: aJSProgramNode [
	self superclass notNil
		ifTrue: [ self superclass parent: nil ].
	superclass := aJSProgramNode.
	self superclass notNil
		ifTrue: [ self superclass parent: self ]
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> tokenVariables [
	^ #(#classToken #extendsToken #implementsToken)
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> typeParameters: aJSTypeParametersNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aJSTypeParametersNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> types [
	^ types
]

{ #category : #generated }
JSAmbientClassDeclarationNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
