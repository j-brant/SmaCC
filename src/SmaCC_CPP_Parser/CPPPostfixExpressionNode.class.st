Class {
	#name : #CPPPostfixExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'expression',
		'operator'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPPostfixExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPostfixExpression: self
]

{ #category : #generated }
CPPPostfixExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CPPPostfixExpressionNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPPostfixExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CPPPostfixExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
CPPPostfixExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CPPPostfixExpressionNode >> tokenVariables [
	^ #(#operator)
]
