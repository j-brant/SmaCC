Class {
	#name : #JavaRecordDeclarationNode,
	#superclass : #JavaDeclarationNode,
	#instVars : [
		'recordToken',
		'name',
		'typeParameters',
		'leftParen',
		'rightParen',
		'leftBrace',
		'declarations',
		'rightBrace',
		'implementsToken',
		'interfaces',
		'commas',
		'parameters',
		'modifiers'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaRecordDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRecordDeclaration: self
]

{ #category : #generated }
JavaRecordDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
JavaRecordDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JavaRecordDeclarationNode >> compositeNodeVariables [
	^ #(#declarations #interfaces #parameters #modifiers)
]

{ #category : #generated }
JavaRecordDeclarationNode >> declarations [
	^ declarations
]

{ #category : #generated }
JavaRecordDeclarationNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
JavaRecordDeclarationNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
JavaRecordDeclarationNode >> ignoredTokenVariables [
	^ #(#leftParen #rightParen #leftBrace #rightBrace)
]

{ #category : #generated }
JavaRecordDeclarationNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
JavaRecordDeclarationNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
JavaRecordDeclarationNode >> initialize [
	super initialize.
	declarations := OrderedCollection new: 2.
	interfaces := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : #generated }
JavaRecordDeclarationNode >> interfaces [
	^ interfaces
]

{ #category : #generated }
JavaRecordDeclarationNode >> interfaces: anOrderedCollection [
	self setParents: self interfaces to: nil.
	interfaces := anOrderedCollection.
	self setParents: self interfaces to: self
]

{ #category : #generated }
JavaRecordDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JavaRecordDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JavaRecordDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
JavaRecordDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
JavaRecordDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
JavaRecordDeclarationNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : #generated }
JavaRecordDeclarationNode >> name [
	^ name
]

{ #category : #generated }
JavaRecordDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
JavaRecordDeclarationNode >> nodeVariables [
	^ #(#typeParameters)
]

{ #category : #generated }
JavaRecordDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
JavaRecordDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
JavaRecordDeclarationNode >> recordToken [
	^ recordToken
]

{ #category : #generated }
JavaRecordDeclarationNode >> recordToken: aSmaCCToken [
	recordToken := aSmaCCToken
]

{ #category : #generated }
JavaRecordDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JavaRecordDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JavaRecordDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
JavaRecordDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
JavaRecordDeclarationNode >> tokenVariables [
	^ #(#recordToken #name #implementsToken)
]

{ #category : #generated }
JavaRecordDeclarationNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
JavaRecordDeclarationNode >> typeParameters: aJavaTypeParametersNode [
	self typeParameters notNil ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aJavaTypeParametersNode.
	self typeParameters notNil ifTrue: [ self typeParameters parent: self ]
]
