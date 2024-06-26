Class {
	#name : #CSStaticConstructorDeclarationNode,
	#superclass : #CSDeclarationNode,
	#instVars : [
		'_attributes',
		'staticToken',
		'modifiers',
		'identifierToken',
		'leftParenToken',
		'rightParenToken',
		'block',
		'equalGreaterThanToken',
		'expression',
		'semicolonToken'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSStaticConstructorDeclarationNode >> _attributes [
	^ _attributes
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> _attributes: anOrderedCollection [
	self setParents: self _attributes to: nil.
	_attributes := anOrderedCollection.
	self setParents: self _attributes to: self
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStaticConstructorDeclaration: self
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> block [
	^ block
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> block: aCSBlockStatementNode [
	self block notNil
		ifTrue: [ self block parent: nil ].
	block := aCSBlockStatementNode.
	self block notNil
		ifTrue: [ self block parent: self ]
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> compositeNodeVariables [
	^ #(#_attributes)
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers)
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> equalGreaterThanToken [
	^ equalGreaterThanToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> equalGreaterThanToken: aSmaCCToken [
	equalGreaterThanToken := aSmaCCToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> expression [
	^ expression
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> identifierToken [
	^ identifierToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> identifierToken: aSmaCCToken [
	identifierToken := aSmaCCToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> ignoredTokenVariables [
	^ #(#semicolonToken)
]

{ #category : #'generated-initialize-release' }
CSStaticConstructorDeclarationNode >> initialize [
	super initialize.
	_attributes := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> leftParenToken [
	^ leftParenToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> leftParenToken: aSmaCCToken [
	leftParenToken := aSmaCCToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> nodeVariables [
	^ #(#block #expression)
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> rightParenToken [
	^ rightParenToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> rightParenToken: aSmaCCToken [
	rightParenToken := aSmaCCToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> semicolonToken [
	^ semicolonToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> semicolonToken: aSmaCCToken [
	semicolonToken := aSmaCCToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> staticToken [
	^ staticToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> staticToken: aSmaCCToken [
	staticToken := aSmaCCToken
]

{ #category : #generated }
CSStaticConstructorDeclarationNode >> tokenVariables [
	^ #(#staticToken #identifierToken #leftParenToken #rightParenToken #equalGreaterThanToken)
]
