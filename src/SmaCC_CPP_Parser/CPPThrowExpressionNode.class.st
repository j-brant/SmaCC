Class {
	#name : #CPPThrowExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'throwToken',
		'expression'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPThrowExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitThrowExpression: self
]

{ #category : #generated }
CPPThrowExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CPPThrowExpressionNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPThrowExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CPPThrowExpressionNode >> throwToken [
	^ throwToken
]

{ #category : #generated }
CPPThrowExpressionNode >> throwToken: aSmaCCToken [
	throwToken := aSmaCCToken
]

{ #category : #generated }
CPPThrowExpressionNode >> tokenVariables [
	^ #(#throwToken)
]
