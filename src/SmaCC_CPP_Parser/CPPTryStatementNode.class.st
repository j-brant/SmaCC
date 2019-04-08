Class {
	#name : #CPPTryStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'tryToken',
		'statement',
		'handlers',
		'initializer'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPTryStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTryStatement: self
]

{ #category : #generated }
CPPTryStatementNode >> compositeNodeVariables [
	^ #(#handlers #specifiers)
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
]

{ #category : #generated }
CPPTryStatementNode >> initializer [
	^ initializer
]

{ #category : #generated }
CPPTryStatementNode >> initializer: aCPPCtorInitializerNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aCPPCtorInitializerNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
CPPTryStatementNode >> nodeVariables [
	^ #(#statement #initializer)
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
	^ #(#tryToken)
]

{ #category : #generated }
CPPTryStatementNode >> tryToken [
	^ tryToken
]

{ #category : #generated }
CPPTryStatementNode >> tryToken: aSmaCCToken [
	tryToken := aSmaCCToken
]
