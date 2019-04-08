Class {
	#name : #CPPContinueStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'continueToken',
		'semicolon'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPContinueStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitContinueStatement: self
]

{ #category : #generated }
CPPContinueStatementNode >> continueToken [
	^ continueToken
]

{ #category : #generated }
CPPContinueStatementNode >> continueToken: aSmaCCToken [
	continueToken := aSmaCCToken
]

{ #category : #generated }
CPPContinueStatementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPContinueStatementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPContinueStatementNode >> tokenVariables [
	^ #(#continueToken #semicolon)
]
