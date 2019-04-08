Class {
	#name : #CPPCommaExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'left',
		'comma',
		'right'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPCommaExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCommaExpression: self
]

{ #category : #generated }
CPPCommaExpressionNode >> comma [
	^ comma
]

{ #category : #generated }
CPPCommaExpressionNode >> comma: aSmaCCToken [
	comma := aSmaCCToken
]

{ #category : #generated }
CPPCommaExpressionNode >> left [
	^ left
]

{ #category : #generated }
CPPCommaExpressionNode >> left: aCPPExpressionNode [
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aCPPExpressionNode.
	self left notNil
		ifTrue: [ self left parent: self ]
]

{ #category : #generated }
CPPCommaExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
CPPCommaExpressionNode >> right [
	^ right
]

{ #category : #generated }
CPPCommaExpressionNode >> right: aCPPExpressionNode [
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aCPPExpressionNode.
	self right notNil
		ifTrue: [ self right parent: self ]
]

{ #category : #generated }
CPPCommaExpressionNode >> tokenVariables [
	^ #(#comma)
]
