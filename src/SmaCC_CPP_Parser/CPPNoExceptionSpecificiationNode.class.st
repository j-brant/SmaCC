Class {
	#name : #CPPNoExceptionSpecificiationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'noexceptToken',
		'leftParens',
		'rightParens'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNoExceptionSpecificiation: self
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
CPPNoExceptionSpecificiationNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> noexceptToken [
	^ noexceptToken
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> noexceptToken: aSmaCCToken [
	noexceptToken := aSmaCCToken
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> tokenVariables [
	^ #(#noexceptToken)
]
