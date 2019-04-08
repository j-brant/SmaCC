Class {
	#name : #CPPAlignofExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'alignofToken',
		'type'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAlignofExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlignofExpression: self
]

{ #category : #generated }
CPPAlignofExpressionNode >> alignofToken [
	^ alignofToken
]

{ #category : #generated }
CPPAlignofExpressionNode >> alignofToken: aSmaCCToken [
	alignofToken := aSmaCCToken
]

{ #category : #generated }
CPPAlignofExpressionNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CPPAlignofExpressionNode >> tokenVariables [
	^ #(#alignofToken)
]

{ #category : #generated }
CPPAlignofExpressionNode >> type [
	^ type
]

{ #category : #generated }
CPPAlignofExpressionNode >> type: aCPPTypeIdentifierNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCPPTypeIdentifierNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
