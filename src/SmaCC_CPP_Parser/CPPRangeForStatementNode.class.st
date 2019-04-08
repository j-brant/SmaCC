Class {
	#name : #CPPRangeForStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'forToken',
		'leftParen',
		'declaration',
		'colon',
		'initializer',
		'rightParen',
		'statement'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPRangeForStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRangeForStatement: self
]

{ #category : #generated }
CPPRangeForStatementNode >> colon [
	^ colon
]

{ #category : #generated }
CPPRangeForStatementNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CPPRangeForStatementNode >> declaration [
	^ declaration
]

{ #category : #generated }
CPPRangeForStatementNode >> declaration: aCPPForRangeDeclarationNode [
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aCPPForRangeDeclarationNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
CPPRangeForStatementNode >> forToken [
	^ forToken
]

{ #category : #generated }
CPPRangeForStatementNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
CPPRangeForStatementNode >> initializer [
	^ initializer
]

{ #category : #generated }
CPPRangeForStatementNode >> initializer: aCPPProgramNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aCPPProgramNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
CPPRangeForStatementNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPRangeForStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPRangeForStatementNode >> nodeVariables [
	^ #(#declaration #initializer #statement)
]

{ #category : #generated }
CPPRangeForStatementNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPRangeForStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPRangeForStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPRangeForStatementNode >> statement: aCPPProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aCPPProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
CPPRangeForStatementNode >> tokenVariables [
	^ #(#forToken #leftParen #colon #rightParen)
]
