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
	#category : #'SmaCC_CPP_Parser'
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
CPPWhileStatementNode >> condition: anObject [
	condition := anObject
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
CPPWhileStatementNode >> otherVariables [
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
CPPWhileStatementNode >> statement: anObject [
	statement := anObject
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
