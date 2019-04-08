Class {
	#name : #CPPGotoStatementNode,
	#superclass : #CPPStatementNode,
	#instVars : [
		'gotoToken',
		'label',
		'semicolon'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPGotoStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGotoStatement: self
]

{ #category : #generated }
CPPGotoStatementNode >> gotoToken [
	^ gotoToken
]

{ #category : #generated }
CPPGotoStatementNode >> gotoToken: aSmaCCToken [
	gotoToken := aSmaCCToken
]

{ #category : #generated }
CPPGotoStatementNode >> label [
	^ label
]

{ #category : #generated }
CPPGotoStatementNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : #generated }
CPPGotoStatementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPGotoStatementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPGotoStatementNode >> tokenVariables [
	^ #(#gotoToken #label #semicolon)
]
