Class {
	#name : #CPPCastExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'type',
		'expression'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPCastExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCastExpression: self
]

{ #category : #generated }
CPPCastExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CPPCastExpressionNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPCastExpressionNode >> nodeVariables [
	^ #(#type #expression)
]

{ #category : #generated }
CPPCastExpressionNode >> type [
	^ type
]

{ #category : #generated }
CPPCastExpressionNode >> type: aCPPTypeIdentifierNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCPPTypeIdentifierNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
