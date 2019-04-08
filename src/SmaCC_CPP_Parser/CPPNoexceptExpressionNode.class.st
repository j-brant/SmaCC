Class {
	#name : #CPPNoexceptExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'noexceptToken',
		'expression'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPNoexceptExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNoexceptExpression: self
]

{ #category : #generated }
CPPNoexceptExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CPPNoexceptExpressionNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPNoexceptExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CPPNoexceptExpressionNode >> noexceptToken [
	^ noexceptToken
]

{ #category : #generated }
CPPNoexceptExpressionNode >> noexceptToken: aSmaCCToken [
	noexceptToken := aSmaCCToken
]

{ #category : #generated }
CPPNoexceptExpressionNode >> tokenVariables [
	^ #(#noexceptToken)
]
