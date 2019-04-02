Class {
	#name : #CPPTryStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'tryToken',
		'statement',
		'handlers',
		'colon',
		'initializers',
		'ellipsises',
		'commas'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPTryStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTryStatement: self
]

{ #category : #generated }
CPPTryStatementNode >> colon [
	^ colon
]

{ #category : #generated }
CPPTryStatementNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CPPTryStatementNode >> commas [
	^ commas
]

{ #category : #generated }
CPPTryStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPTryStatementNode >> compositeNodeVariables [
	^ #(#handlers #initializers #specifiers)
]

{ #category : #generated }
CPPTryStatementNode >> compositeTokenVariables [
	^ #(#ellipsises #commas)
]

{ #category : #generated }
CPPTryStatementNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPTryStatementNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPTryStatementNode >> handlers [
	^ handlers
]

{ #category : #generated }
CPPTryStatementNode >> handlers: anOrderedCollection [
	self setParents: self handlers to: nil.
	handlers := anOrderedCollection.
	self setParents: self handlers to: self
]

{ #category : #'generated-initialize-release' }
CPPTryStatementNode >> initialize [
	super initialize.
	handlers := OrderedCollection new: 2.
	initializers := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPTryStatementNode >> initializers [
	^ initializers
]

{ #category : #generated }
CPPTryStatementNode >> initializers: anOrderedCollection [
	self setParents: self initializers to: nil.
	initializers := anOrderedCollection.
	self setParents: self initializers to: self
]

{ #category : #generated }
CPPTryStatementNode >> nodeVariables [
	^ #(#statement)
]

{ #category : #generated }
CPPTryStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPTryStatementNode >> statement: aCPPCompoundStatementNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aCPPCompoundStatementNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
CPPTryStatementNode >> tokenVariables [
	^ #(#tryToken #colon)
]

{ #category : #generated }
CPPTryStatementNode >> tryToken [
	^ tryToken
]

{ #category : #generated }
CPPTryStatementNode >> tryToken: aSmaCCToken [
	tryToken := aSmaCCToken
]
