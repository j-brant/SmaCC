Class {
	#name : #RustErrorPropogationExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'expression',
		'question'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustErrorPropogationExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitErrorPropogationExpression: self
]

{ #category : #generated }
RustErrorPropogationExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustErrorPropogationExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustErrorPropogationExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
RustErrorPropogationExpressionNode >> question [
	^ question
]

{ #category : #generated }
RustErrorPropogationExpressionNode >> question: aSmaCCToken [
	question := aSmaCCToken
]

{ #category : #generated }
RustErrorPropogationExpressionNode >> tokenVariables [
	^ #(#question)
]
