Class {
	#name : #RustCallExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'expression',
		'leftParen',
		'rightParen',
		'args',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustCallExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallExpression: self
]

{ #category : #generated }
RustCallExpressionNode >> args [
	^ args
]

{ #category : #generated }
RustCallExpressionNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
RustCallExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
RustCallExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustCallExpressionNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : #generated }
RustCallExpressionNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustCallExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustCallExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
RustCallExpressionNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustCallExpressionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustCallExpressionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustCallExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
RustCallExpressionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustCallExpressionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustCallExpressionNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
