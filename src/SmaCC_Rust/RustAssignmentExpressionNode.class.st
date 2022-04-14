Class {
	#name : #RustAssignmentExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'lhs',
		'operator',
		'rhs'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustAssignmentExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssignmentExpression: self
]

{ #category : #generated }
RustAssignmentExpressionNode >> lhs [
	^ lhs
]

{ #category : #generated }
RustAssignmentExpressionNode >> lhs: aRustExpressionNode [
	self lhs notNil ifTrue: [ self lhs parent: nil ].
	lhs := aRustExpressionNode.
	self lhs notNil ifTrue: [ self lhs parent: self ]
]

{ #category : #generated }
RustAssignmentExpressionNode >> nodeVariables [
	^ #(#lhs #rhs)
]

{ #category : #generated }
RustAssignmentExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
RustAssignmentExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RustAssignmentExpressionNode >> rhs [
	^ rhs
]

{ #category : #generated }
RustAssignmentExpressionNode >> rhs: aRustExpressionNode [
	self rhs notNil ifTrue: [ self rhs parent: nil ].
	rhs := aRustExpressionNode.
	self rhs notNil ifTrue: [ self rhs parent: self ]
]

{ #category : #generated }
RustAssignmentExpressionNode >> tokenVariables [
	^ #(#operator)
]
