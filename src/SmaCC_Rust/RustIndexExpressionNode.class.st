Class {
	#name : #RustIndexExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'expression',
		'leftBracket',
		'index',
		'rightBracket'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustIndexExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIndexExpression: self
]

{ #category : #generated }
RustIndexExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustIndexExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustIndexExpressionNode >> index [
	^ index
]

{ #category : #generated }
RustIndexExpressionNode >> index: aRustExpressionNode [
	self index notNil ifTrue: [ self index parent: nil ].
	index := aRustExpressionNode.
	self index notNil ifTrue: [ self index parent: self ]
]

{ #category : #generated }
RustIndexExpressionNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
RustIndexExpressionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
RustIndexExpressionNode >> nodeVariables [
	^ #(#expression #index)
]

{ #category : #generated }
RustIndexExpressionNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
RustIndexExpressionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
RustIndexExpressionNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]
