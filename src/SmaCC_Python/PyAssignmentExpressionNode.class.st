Class {
	#name : #PyAssignmentExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'variable',
		'assign',
		'value'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyAssignmentExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitAssignmentExpression: self
]

{ #category : #generated }
PyAssignmentExpressionNode >> assign [
	^ assign
]

{ #category : #generated }
PyAssignmentExpressionNode >> assign: aSmaCCToken [
	assign := aSmaCCToken
]

{ #category : #generated }
PyAssignmentExpressionNode >> nodeVariables [
	^ #(#variable #value)
]

{ #category : #generated }
PyAssignmentExpressionNode >> tokenVariables [
	^ #(#assign)
]

{ #category : #generated }
PyAssignmentExpressionNode >> value [
	^ value
]

{ #category : #generated }
PyAssignmentExpressionNode >> value: aPyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : #generated }
PyAssignmentExpressionNode >> variable [
	^ variable
]

{ #category : #generated }
PyAssignmentExpressionNode >> variable: aPyVariableExpressionNode [
	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aPyVariableExpressionNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]
