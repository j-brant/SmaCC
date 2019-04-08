Class {
	#name : #CPPOperatorFunctionIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'operatorToken',
		'name',
		'leftBracket',
		'rightBracket',
		'leftParen',
		'rightParen'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOperatorFunctionIdentifier: self
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> name [
	^ name
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> operatorToken [
	^ operatorToken
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> operatorToken: aSmaCCToken [
	operatorToken := aSmaCCToken
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> tokenVariables [
	^ #(#operatorToken #name #leftBracket #rightBracket #leftParen #rightParen)
]
