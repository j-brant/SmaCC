Class {
	#name : #JSConstructorTypeNode,
	#superclass : #JSTypeNode,
	#instVars : [
		'newToken',
		'restParameter',
		'parameters',
		'commas',
		'arrow',
		'type',
		'typeParameters'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSConstructorTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstructorType: self
]

{ #category : #generated }
JSConstructorTypeNode >> arrow [
	^ arrow
]

{ #category : #generated }
JSConstructorTypeNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
]

{ #category : #generated }
JSConstructorTypeNode >> commas [
	^ commas
]

{ #category : #generated }
JSConstructorTypeNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSConstructorTypeNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
JSConstructorTypeNode >> ignoredCompositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
JSConstructorTypeNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JSConstructorTypeNode >> newToken [
	^ newToken
]

{ #category : #generated }
JSConstructorTypeNode >> newToken: aSmaCCToken [
	newToken := aSmaCCToken
]

{ #category : #generated }
JSConstructorTypeNode >> nodeVariables [
	^ #(#restParameter #type #typeParameters)
]

{ #category : #generated }
JSConstructorTypeNode >> parameters [
	^ parameters
]

{ #category : #generated }
JSConstructorTypeNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
JSConstructorTypeNode >> restParameter [
	^ restParameter
]

{ #category : #generated }
JSConstructorTypeNode >> restParameter: aJSRestVariableDeclarationNode [
	self restParameter notNil
		ifTrue: [ self restParameter parent: nil ].
	restParameter := aJSRestVariableDeclarationNode.
	self restParameter notNil
		ifTrue: [ self restParameter parent: self ]
]

{ #category : #generated }
JSConstructorTypeNode >> tokenVariables [
	^ #(#newToken #arrow)
]

{ #category : #generated }
JSConstructorTypeNode >> type [
	^ type
]

{ #category : #generated }
JSConstructorTypeNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
JSConstructorTypeNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
JSConstructorTypeNode >> typeParameters: aJSTypeParametersNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aJSTypeParametersNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]
