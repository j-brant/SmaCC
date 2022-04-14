Class {
	#name : #RustBinaryExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'left',
		'operator',
		'right'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustBinaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBinaryExpression: self
]

{ #category : #generated }
RustBinaryExpressionNode >> left [
	^ left
]

{ #category : #generated }
RustBinaryExpressionNode >> left: aRustExpressionNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aRustExpressionNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : #generated }
RustBinaryExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
RustBinaryExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
RustBinaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RustBinaryExpressionNode >> right [
	^ right
]

{ #category : #generated }
RustBinaryExpressionNode >> right: aRustExpressionNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aRustExpressionNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : #generated }
RustBinaryExpressionNode >> tokenVariables [
	^ #(#operator)
]
