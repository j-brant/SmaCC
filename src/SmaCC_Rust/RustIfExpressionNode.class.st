Class {
	#name : #RustIfExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'ifToken',
		'conditional',
		'thenValue',
		'elseToken',
		'elseValue'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustIfExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIfExpression: self
]

{ #category : #generated }
RustIfExpressionNode >> conditional [
	^ conditional
]

{ #category : #generated }
RustIfExpressionNode >> conditional: aRustExpressionNode [
	self conditional notNil ifTrue: [ self conditional parent: nil ].
	conditional := aRustExpressionNode.
	self conditional notNil ifTrue: [ self conditional parent: self ]
]

{ #category : #generated }
RustIfExpressionNode >> elseToken [
	^ elseToken
]

{ #category : #generated }
RustIfExpressionNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : #generated }
RustIfExpressionNode >> elseValue [
	^ elseValue
]

{ #category : #generated }
RustIfExpressionNode >> elseValue: aRustExpressionNode [
	self elseValue notNil ifTrue: [ self elseValue parent: nil ].
	elseValue := aRustExpressionNode.
	self elseValue notNil ifTrue: [ self elseValue parent: self ]
]

{ #category : #generated }
RustIfExpressionNode >> ifToken [
	^ ifToken
]

{ #category : #generated }
RustIfExpressionNode >> ifToken: aSmaCCToken [
	ifToken := aSmaCCToken
]

{ #category : #generated }
RustIfExpressionNode >> nodeVariables [
	^ #(#conditional #thenValue #elseValue)
]

{ #category : #generated }
RustIfExpressionNode >> thenValue [
	^ thenValue
]

{ #category : #generated }
RustIfExpressionNode >> thenValue: aRustBlockExpressionNode [
	self thenValue notNil ifTrue: [ self thenValue parent: nil ].
	thenValue := aRustBlockExpressionNode.
	self thenValue notNil ifTrue: [ self thenValue parent: self ]
]

{ #category : #generated }
RustIfExpressionNode >> tokenVariables [
	^ #(#ifToken #elseToken)
]
