Class {
	#name : #JSCallSignatureNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'left',
		'restParameter',
		'parameters',
		'commas',
		'right',
		'colonToken',
		'type',
		'typeParameters'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSCallSignatureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallSignature: self
]

{ #category : #generated }
JSCallSignatureNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
JSCallSignatureNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
JSCallSignatureNode >> commas [
	^ commas
]

{ #category : #generated }
JSCallSignatureNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSCallSignatureNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
JSCallSignatureNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
JSCallSignatureNode >> ignoredTokenVariables [
	^ #(#left #right #colonToken)
]

{ #category : #'generated-initialize-release' }
JSCallSignatureNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JSCallSignatureNode >> left [
	^ left
]

{ #category : #generated }
JSCallSignatureNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
JSCallSignatureNode >> nodeVariables [
	^ #(#restParameter #type #typeParameters)
]

{ #category : #generated }
JSCallSignatureNode >> parameters [
	^ parameters
]

{ #category : #generated }
JSCallSignatureNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
JSCallSignatureNode >> restParameter [
	^ restParameter
]

{ #category : #generated }
JSCallSignatureNode >> restParameter: aJSRestVariableDeclarationNode [
	self restParameter notNil
		ifTrue: [ self restParameter parent: nil ].
	restParameter := aJSRestVariableDeclarationNode.
	self restParameter notNil
		ifTrue: [ self restParameter parent: self ]
]

{ #category : #generated }
JSCallSignatureNode >> right [
	^ right
]

{ #category : #generated }
JSCallSignatureNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
JSCallSignatureNode >> type [
	^ type
]

{ #category : #generated }
JSCallSignatureNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
JSCallSignatureNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
JSCallSignatureNode >> typeParameters: aJSTypeParametersNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aJSTypeParametersNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]
