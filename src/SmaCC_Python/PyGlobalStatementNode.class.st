Class {
	#name : #PyGlobalStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'globalToken',
		'commaTokens',
		'nameTokens'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyGlobalStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitGlobalStatement: self
]

{ #category : #generated }
PyGlobalStatementNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyGlobalStatementNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyGlobalStatementNode >> compositeTokenVariables [
	^ #(#commaTokens #nameTokens)
]

{ #category : #generated }
PyGlobalStatementNode >> globalToken [
	^ globalToken
]

{ #category : #generated }
PyGlobalStatementNode >> globalToken: aSmaCCToken [
	globalToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyGlobalStatementNode >> initialize [
	super initialize.
	commaTokens := OrderedCollection new: 2.
	nameTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyGlobalStatementNode >> nameTokens [
	^ nameTokens
]

{ #category : #generated }
PyGlobalStatementNode >> nameTokens: anOrderedCollection [
	nameTokens := anOrderedCollection
]

{ #category : #generated }
PyGlobalStatementNode >> tokenVariables [
	^ #(#globalToken #semicolonToken)
]
