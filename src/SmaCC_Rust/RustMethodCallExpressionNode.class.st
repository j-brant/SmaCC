Class {
	#name : #RustMethodCallExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'expression',
		'period',
		'name',
		'separator',
		'genericArgs',
		'leftParen',
		'rightParen',
		'args',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustMethodCallExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMethodCallExpression: self
]

{ #category : #generated }
RustMethodCallExpressionNode >> args [
	^ args
]

{ #category : #generated }
RustMethodCallExpressionNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
RustMethodCallExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
RustMethodCallExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustMethodCallExpressionNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : #generated }
RustMethodCallExpressionNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustMethodCallExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
RustMethodCallExpressionNode >> expression: aRustExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aRustExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
RustMethodCallExpressionNode >> genericArgs [
	^ genericArgs
]

{ #category : #generated }
RustMethodCallExpressionNode >> genericArgs: aRustGenericArgsNode [
	self genericArgs notNil ifTrue: [ self genericArgs parent: nil ].
	genericArgs := aRustGenericArgsNode.
	self genericArgs notNil ifTrue: [ self genericArgs parent: self ]
]

{ #category : #'generated-initialize-release' }
RustMethodCallExpressionNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustMethodCallExpressionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustMethodCallExpressionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustMethodCallExpressionNode >> name [
	^ name
]

{ #category : #generated }
RustMethodCallExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustMethodCallExpressionNode >> nodeVariables [
	^ #(#expression #genericArgs)
]

{ #category : #generated }
RustMethodCallExpressionNode >> period [
	^ period
]

{ #category : #generated }
RustMethodCallExpressionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
RustMethodCallExpressionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustMethodCallExpressionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustMethodCallExpressionNode >> separator [
	^ separator
]

{ #category : #generated }
RustMethodCallExpressionNode >> separator: aSmaCCToken [
	separator := aSmaCCToken
]

{ #category : #generated }
RustMethodCallExpressionNode >> tokenVariables [
	^ #(#period #name #separator #leftParen #rightParen)
]
