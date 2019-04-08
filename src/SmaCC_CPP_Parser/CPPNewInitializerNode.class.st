Class {
	#name : #CPPNewInitializerNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'leftParen',
		'rightParen',
		'values',
		'ellipsises',
		'commas'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPNewInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNewInitializer: self
]

{ #category : #generated }
CPPNewInitializerNode >> commas [
	^ commas
]

{ #category : #generated }
CPPNewInitializerNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPNewInitializerNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
CPPNewInitializerNode >> compositeTokenVariables [
	^ #(#ellipsises #commas)
]

{ #category : #generated }
CPPNewInitializerNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPNewInitializerNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CPPNewInitializerNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPNewInitializerNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPNewInitializerNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPNewInitializerNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPNewInitializerNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPNewInitializerNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]

{ #category : #generated }
CPPNewInitializerNode >> values [
	^ values
]

{ #category : #generated }
CPPNewInitializerNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
