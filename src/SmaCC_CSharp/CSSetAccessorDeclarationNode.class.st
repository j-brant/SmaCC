Class {
	#name : #CSSetAccessorDeclarationNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'_attributes',
		'modifiers',
		'setToken',
		'body',
		'equalGreaterThanToken',
		'expression',
		'semicolonToken'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSSetAccessorDeclarationNode >> _attributes [
	^ _attributes
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> _attributes: anOrderedCollection [
	self setParents: self _attributes to: nil.
	_attributes := anOrderedCollection.
	self setParents: self _attributes to: self
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSetAccessorDeclaration: self
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> body [
	^ body
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> body: aCSBlockStatementNode [
	self body notNil
		ifTrue: [ self body parent: nil ].
	body := aCSBlockStatementNode.
	self body notNil
		ifTrue: [ self body parent: self ]
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> compositeNodeVariables [
	^ #(#_attributes)
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers)
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> equalGreaterThanToken [
	^ equalGreaterThanToken
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> equalGreaterThanToken: aSmaCCToken [
	equalGreaterThanToken := aSmaCCToken
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> expression [
	^ expression
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> ignoredTokenVariables [
	^ #(#semicolonToken)
]

{ #category : #'generated-initialize-release' }
CSSetAccessorDeclarationNode >> initialize [
	super initialize.
	_attributes := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> nodeVariables [
	^ #(#body #expression)
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> semicolonToken [
	^ semicolonToken
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> semicolonToken: aSmaCCToken [
	semicolonToken := aSmaCCToken
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> setToken [
	^ setToken
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> setToken: aSmaCCToken [
	setToken := aSmaCCToken
]

{ #category : #generated }
CSSetAccessorDeclarationNode >> tokenVariables [
	^ #(#setToken #equalGreaterThanToken)
]
