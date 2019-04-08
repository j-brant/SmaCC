Class {
	#name : #CPPPrefixExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'operator',
		'expression'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPPrefixExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPrefixExpression: self
]

{ #category : #generated }
CPPPrefixExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CPPPrefixExpressionNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPPrefixExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CPPPrefixExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
CPPPrefixExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CPPPrefixExpressionNode >> tokenVariables [
	^ #(#operator)
]
