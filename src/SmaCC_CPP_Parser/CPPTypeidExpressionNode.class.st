Class {
	#name : #CPPTypeidExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'typeidToken',
		'value'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPTypeidExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeidExpression: self
]

{ #category : #generated }
CPPTypeidExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CPPTypeidExpressionNode >> tokenVariables [
	^ #(#typeidToken)
]

{ #category : #generated }
CPPTypeidExpressionNode >> typeidToken [
	^ typeidToken
]

{ #category : #generated }
CPPTypeidExpressionNode >> typeidToken: aSmaCCToken [
	typeidToken := aSmaCCToken
]

{ #category : #generated }
CPPTypeidExpressionNode >> value [
	^ value
]

{ #category : #generated }
CPPTypeidExpressionNode >> value: aCPPProgramNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aCPPProgramNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
