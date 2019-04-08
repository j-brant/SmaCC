Class {
	#name : #CPPAssignmentExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'lhs',
		'operator',
		'initializer'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAssignmentExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssignmentExpression: self
]

{ #category : #generated }
CPPAssignmentExpressionNode >> initializer [
	^ initializer
]

{ #category : #generated }
CPPAssignmentExpressionNode >> initializer: aCPPProgramNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aCPPProgramNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
CPPAssignmentExpressionNode >> lhs [
	^ lhs
]

{ #category : #generated }
CPPAssignmentExpressionNode >> lhs: aCPPExpressionNode [
	self lhs notNil
		ifTrue: [ self lhs parent: nil ].
	lhs := aCPPExpressionNode.
	self lhs notNil
		ifTrue: [ self lhs parent: self ]
]

{ #category : #generated }
CPPAssignmentExpressionNode >> nodeVariables [
	^ #(#lhs #initializer)
]

{ #category : #generated }
CPPAssignmentExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
CPPAssignmentExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CPPAssignmentExpressionNode >> tokenVariables [
	^ #(#operator)
]
