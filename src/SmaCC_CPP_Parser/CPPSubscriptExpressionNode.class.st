Class {
	#name : #CPPSubscriptExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'expression',
		'leftBracket',
		'subscript',
		'rightBracket'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPSubscriptExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubscriptExpression: self
]

{ #category : #generated }
CPPSubscriptExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CPPSubscriptExpressionNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPSubscriptExpressionNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
CPPSubscriptExpressionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
CPPSubscriptExpressionNode >> nodeVariables [
	^ #(#expression #subscript)
]

{ #category : #generated }
CPPSubscriptExpressionNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
CPPSubscriptExpressionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
CPPSubscriptExpressionNode >> subscript [
	^ subscript
]

{ #category : #generated }
CPPSubscriptExpressionNode >> subscript: aCPPProgramNode [
	self subscript notNil
		ifTrue: [ self subscript parent: nil ].
	subscript := aCPPProgramNode.
	self subscript notNil
		ifTrue: [ self subscript parent: self ]
]

{ #category : #generated }
CPPSubscriptExpressionNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]
