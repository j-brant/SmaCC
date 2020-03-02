Class {
	#name : #JSConstructSignatureNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'newToken',
		'leftParen',
		'restParameter',
		'parameters',
		'commas',
		'rightParen',
		'colonToken',
		'type',
		'typeParameters'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSConstructSignatureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstructSignature: self
]

{ #category : #generated }
JSConstructSignatureNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
JSConstructSignatureNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
JSConstructSignatureNode >> commas [
	^ commas
]

{ #category : #generated }
JSConstructSignatureNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSConstructSignatureNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
JSConstructSignatureNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
JSConstructSignatureNode >> ignoredTokenVariables [
	^ #(#leftParen #rightParen #colonToken)
]

{ #category : #'generated-initialize-release' }
JSConstructSignatureNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JSConstructSignatureNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
JSConstructSignatureNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
JSConstructSignatureNode >> newToken [
	^ newToken
]

{ #category : #generated }
JSConstructSignatureNode >> newToken: aSmaCCToken [
	newToken := aSmaCCToken
]

{ #category : #generated }
JSConstructSignatureNode >> nodeVariables [
	^ #(#restParameter #type #typeParameters)
]

{ #category : #generated }
JSConstructSignatureNode >> parameters [
	^ parameters
]

{ #category : #generated }
JSConstructSignatureNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
JSConstructSignatureNode >> restParameter [
	^ restParameter
]

{ #category : #generated }
JSConstructSignatureNode >> restParameter: aJSRestVariableDeclarationNode [
	self restParameter notNil
		ifTrue: [ self restParameter parent: nil ].
	restParameter := aJSRestVariableDeclarationNode.
	self restParameter notNil
		ifTrue: [ self restParameter parent: self ]
]

{ #category : #generated }
JSConstructSignatureNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
JSConstructSignatureNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
JSConstructSignatureNode >> tokenVariables [
	^ #(#newToken)
]

{ #category : #generated }
JSConstructSignatureNode >> type [
	^ type
]

{ #category : #generated }
JSConstructSignatureNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
JSConstructSignatureNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
JSConstructSignatureNode >> typeParameters: aJSTypeParametersNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aJSTypeParametersNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]
