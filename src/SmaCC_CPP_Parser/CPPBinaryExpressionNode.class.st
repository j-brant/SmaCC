Class {
	#name : #CPPBinaryExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'left',
		'operator',
		'right'
	],
	#category : #'SmaCC_CPP_Parser-C++ Parser'
}

{ #category : #generated }
CPPBinaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBinaryExpression: self
]

{ #category : #generated }
CPPBinaryExpressionNode >> left [
	^ left
]

{ #category : #generated }
CPPBinaryExpressionNode >> left: aCPPExpressionNode [
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aCPPExpressionNode.
	self left notNil
		ifTrue: [ self left parent: self ]
]

{ #category : #generated }
CPPBinaryExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
CPPBinaryExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
CPPBinaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CPPBinaryExpressionNode >> right [
	^ right
]

{ #category : #generated }
CPPBinaryExpressionNode >> right: aCPPExpressionNode [
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aCPPExpressionNode.
	self right notNil
		ifTrue: [ self right parent: self ]
]

{ #category : #generated }
CPPBinaryExpressionNode >> tokenVariables [
	^ #(#operator)
]
