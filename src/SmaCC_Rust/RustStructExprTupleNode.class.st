Class {
	#name : #RustStructExprTupleNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'path',
		'leftParen',
		'rightParen',
		'args',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustStructExprTupleNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStructExprTuple: self
]

{ #category : #generated }
RustStructExprTupleNode >> args [
	^ args
]

{ #category : #generated }
RustStructExprTupleNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
RustStructExprTupleNode >> commas [
	^ commas
]

{ #category : #generated }
RustStructExprTupleNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustStructExprTupleNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : #generated }
RustStructExprTupleNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
RustStructExprTupleNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustStructExprTupleNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustStructExprTupleNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustStructExprTupleNode >> nodeVariables [
	^ #(#path)
]

{ #category : #generated }
RustStructExprTupleNode >> path [
	^ path
]

{ #category : #generated }
RustStructExprTupleNode >> path: aRustPathExpressionNode [
	self path notNil ifTrue: [ self path parent: nil ].
	path := aRustPathExpressionNode.
	self path notNil ifTrue: [ self path parent: self ]
]

{ #category : #generated }
RustStructExprTupleNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustStructExprTupleNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustStructExprTupleNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
