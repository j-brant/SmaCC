Class {
	#name : #CPPMemInitializerNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'identifier',
		'leftParen',
		'rightParen',
		'values',
		'ellipsises',
		'commas',
		'initializer'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPMemInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMemInitializer: self
]

{ #category : #generated }
CPPMemInitializerNode >> commas [
	^ commas
]

{ #category : #generated }
CPPMemInitializerNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPMemInitializerNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
CPPMemInitializerNode >> compositeTokenVariables [
	^ #(#ellipsises #commas)
]

{ #category : #generated }
CPPMemInitializerNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPMemInitializerNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPMemInitializerNode >> identifier [
	^ identifier
]

{ #category : #generated }
CPPMemInitializerNode >> identifier: aCPPProgramNode [
	self identifier notNil
		ifTrue: [ self identifier parent: nil ].
	identifier := aCPPProgramNode.
	self identifier notNil
		ifTrue: [ self identifier parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPMemInitializerNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPMemInitializerNode >> initializer [
	^ initializer
]

{ #category : #generated }
CPPMemInitializerNode >> initializer: aCPPBracedListInitializerNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aCPPBracedListInitializerNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
CPPMemInitializerNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPMemInitializerNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPMemInitializerNode >> nodeVariables [
	^ #(#identifier #initializer)
]

{ #category : #generated }
CPPMemInitializerNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPMemInitializerNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPMemInitializerNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]

{ #category : #generated }
CPPMemInitializerNode >> values [
	^ values
]

{ #category : #generated }
CPPMemInitializerNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
