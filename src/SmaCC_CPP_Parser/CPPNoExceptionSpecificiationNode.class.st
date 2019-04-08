Class {
	#name : #CPPNoExceptionSpecificiationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'noexceptToken',
		'leftParen',
		'expression',
		'rightParen'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNoExceptionSpecificiation: self
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> expression [
	^ expression
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> noexceptToken [
	^ noexceptToken
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> noexceptToken: aSmaCCToken [
	noexceptToken := aSmaCCToken
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPNoExceptionSpecificiationNode >> tokenVariables [
	^ #(#noexceptToken #leftParen #rightParen)
]
