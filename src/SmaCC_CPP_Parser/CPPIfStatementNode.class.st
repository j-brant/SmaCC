Class {
	#name : #CPPIfStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'ifToken',
		'leftParen',
		'condition',
		'rightParen',
		'statement',
		'thenStatement',
		'elseToken',
		'elseStatement'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPIfStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIfStatement: self
]

{ #category : #generated }
CPPIfStatementNode >> condition [
	^ condition
]

{ #category : #generated }
CPPIfStatementNode >> condition: anObject [
	condition := anObject
]

{ #category : #generated }
CPPIfStatementNode >> elseStatement [
	^ elseStatement
]

{ #category : #generated }
CPPIfStatementNode >> elseStatement: anObject [
	elseStatement := anObject
]

{ #category : #generated }
CPPIfStatementNode >> elseToken [
	^ elseToken
]

{ #category : #generated }
CPPIfStatementNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : #generated }
CPPIfStatementNode >> ifToken [
	^ ifToken
]

{ #category : #generated }
CPPIfStatementNode >> ifToken: aSmaCCToken [
	ifToken := aSmaCCToken
]

{ #category : #generated }
CPPIfStatementNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPIfStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPIfStatementNode >> otherVariables [
	^ #(#condition #statement #thenStatement #elseStatement)
]

{ #category : #generated }
CPPIfStatementNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPIfStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPIfStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CPPIfStatementNode >> statement: anObject [
	statement := anObject
]

{ #category : #generated }
CPPIfStatementNode >> thenStatement [
	^ thenStatement
]

{ #category : #generated }
CPPIfStatementNode >> thenStatement: anObject [
	thenStatement := anObject
]

{ #category : #generated }
CPPIfStatementNode >> tokenVariables [
	^ #(#ifToken #leftParen #rightParen #elseToken)
]
