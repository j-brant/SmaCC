Class {
	#name : #CPPBracedListInitializerNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'leftBrace',
		'values',
		'ellipsises',
		'commas',
		'rightBrace'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPBracedListInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBracedListInitializer: self
]

{ #category : #generated }
CPPBracedListInitializerNode >> commas [
	^ commas
]

{ #category : #generated }
CPPBracedListInitializerNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPBracedListInitializerNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
CPPBracedListInitializerNode >> compositeTokenVariables [
	^ #(#ellipsises #commas)
]

{ #category : #generated }
CPPBracedListInitializerNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPBracedListInitializerNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CPPBracedListInitializerNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPBracedListInitializerNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CPPBracedListInitializerNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CPPBracedListInitializerNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CPPBracedListInitializerNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CPPBracedListInitializerNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : #generated }
CPPBracedListInitializerNode >> values [
	^ values
]

{ #category : #generated }
CPPBracedListInitializerNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
