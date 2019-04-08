Class {
	#name : #CPPWhileStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'whileToken',
		'leftParen',
		'condition',
		'rightParen',
		'statement'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPWhileStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhileStatement: self
]

{ #category : #generated }
CPPWhileStatementNode >> condition [
	^ condition
]

{ #category : #generated }
CPPWhileStatementNode >> condition: aCPPProgramNode [
	self condition notNil
		ifTrue: [ self condition parent: nil ].
	condition := aCPPProgramNode.
	self condition notNil
		ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
CPPWhileStatementNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPWhileStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPWhileStatementNode >> nodeVariables [
	^ #(#condition #statement)
]

{ #category : #generated }
CPPWhileStatementNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPWhileStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPWhileStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPWhileStatementNode >> statement: aCPPProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aCPPProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
CPPWhileStatementNode >> tokenVariables [
	^ #(#whileToken #leftParen #rightParen)
]

{ #category : #generated }
CPPWhileStatementNode >> whileToken [
	^ whileToken
]

{ #category : #generated }
CPPWhileStatementNode >> whileToken: aSmaCCToken [
	whileToken := aSmaCCToken
]
