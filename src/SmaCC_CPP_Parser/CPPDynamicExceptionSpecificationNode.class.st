Class {
	#name : #CPPDynamicExceptionSpecificationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'throwToken',
		'leftParen',
		'rightParen',
		'types',
		'ellipsises',
		'commas'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDynamicExceptionSpecification: self
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> commas [
	^ commas
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> compositeNodeVariables [
	^ #(#types)
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> compositeTokenVariables [
	^ #(#ellipsises #commas)
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CPPDynamicExceptionSpecificationNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> throwToken [
	^ throwToken
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> throwToken: aSmaCCToken [
	throwToken := aSmaCCToken
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> tokenVariables [
	^ #(#throwToken #leftParen #rightParen)
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> types [
	^ types
]

{ #category : #generated }
CPPDynamicExceptionSpecificationNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
