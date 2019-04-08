Class {
	#name : #CPPCtorInitializerNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'colon',
		'initializers',
		'ellipsises',
		'commas'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPCtorInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCtorInitializer: self
]

{ #category : #generated }
CPPCtorInitializerNode >> colon [
	^ colon
]

{ #category : #generated }
CPPCtorInitializerNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CPPCtorInitializerNode >> commas [
	^ commas
]

{ #category : #generated }
CPPCtorInitializerNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPCtorInitializerNode >> compositeNodeVariables [
	^ #(#initializers)
]

{ #category : #generated }
CPPCtorInitializerNode >> compositeTokenVariables [
	^ #(#ellipsises #commas)
]

{ #category : #generated }
CPPCtorInitializerNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPCtorInitializerNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CPPCtorInitializerNode >> initialize [
	super initialize.
	initializers := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPCtorInitializerNode >> initializers [
	^ initializers
]

{ #category : #generated }
CPPCtorInitializerNode >> initializers: anOrderedCollection [
	self setParents: self initializers to: nil.
	initializers := anOrderedCollection.
	self setParents: self initializers to: self
]

{ #category : #generated }
CPPCtorInitializerNode >> tokenVariables [
	^ #(#colon)
]
