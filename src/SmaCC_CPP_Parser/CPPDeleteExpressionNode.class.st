Class {
	#name : #CPPDeleteExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'_deleteToken',
		'expression',
		'colonColon',
		'leftBracket',
		'rightBracket'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPDeleteExpressionNode >> _deleteToken [
	^ _deleteToken
]

{ #category : #generated }
CPPDeleteExpressionNode >> _deleteToken: aSmaCCToken [
	_deleteToken := aSmaCCToken
]

{ #category : #generated }
CPPDeleteExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeleteExpression: self
]

{ #category : #generated }
CPPDeleteExpressionNode >> colonColon [
	^ colonColon
]

{ #category : #generated }
CPPDeleteExpressionNode >> colonColon: aSmaCCToken [
	colonColon := aSmaCCToken
]

{ #category : #generated }
CPPDeleteExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CPPDeleteExpressionNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPDeleteExpressionNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
CPPDeleteExpressionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
CPPDeleteExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CPPDeleteExpressionNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
CPPDeleteExpressionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
CPPDeleteExpressionNode >> tokenVariables [
	^ #(#_deleteToken #colonColon #leftBracket #rightBracket)
]
