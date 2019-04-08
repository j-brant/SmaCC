Class {
	#name : #CPPIfStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'ifToken',
		'leftParen',
		'condition',
		'rightParen',
		'thenStatement',
		'elseToken',
		'elseStatement'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
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
CPPIfStatementNode >> condition: aCPPProgramNode [
	self condition notNil
		ifTrue: [ self condition parent: nil ].
	condition := aCPPProgramNode.
	self condition notNil
		ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
CPPIfStatementNode >> elseStatement [
	^ elseStatement
]

{ #category : #generated }
CPPIfStatementNode >> elseStatement: aCPPProgramNode [
	self elseStatement notNil
		ifTrue: [ self elseStatement parent: nil ].
	elseStatement := aCPPProgramNode.
	self elseStatement notNil
		ifTrue: [ self elseStatement parent: self ]
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
CPPIfStatementNode >> nodeVariables [
	^ #(#condition #thenStatement #elseStatement)
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
CPPIfStatementNode >> thenStatement [
	^ thenStatement
]

{ #category : #generated }
CPPIfStatementNode >> thenStatement: aCPPProgramNode [
	self thenStatement notNil
		ifTrue: [ self thenStatement parent: nil ].
	thenStatement := aCPPProgramNode.
	self thenStatement notNil
		ifTrue: [ self thenStatement parent: self ]
]

{ #category : #generated }
CPPIfStatementNode >> tokenVariables [
	^ #(#ifToken #leftParen #rightParen #elseToken)
]
