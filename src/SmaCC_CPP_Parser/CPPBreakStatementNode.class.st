Class {
	#name : #CPPBreakStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'breakToken',
		'semicolon'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPBreakStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBreakStatement: self
]

{ #category : #generated }
CPPBreakStatementNode >> breakToken [
	^ breakToken
]

{ #category : #generated }
CPPBreakStatementNode >> breakToken: aSmaCCToken [
	breakToken := aSmaCCToken
]

{ #category : #generated }
CPPBreakStatementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPBreakStatementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPBreakStatementNode >> tokenVariables [
	^ #(#breakToken #semicolon)
]
