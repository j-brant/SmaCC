Class {
	#name : #CPPDefaultLabeledStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'defaultToken',
		'colon',
		'statement'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPDefaultLabeledStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDefaultLabeledStatement: self
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> colon [
	^ colon
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> defaultToken [
	^ defaultToken
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> nodeVariables [
	^ #(#statement)
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> statement: aCPPProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aCPPProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
CPPDefaultLabeledStatementNode >> tokenVariables [
	^ #(#defaultToken #colon)
]
