Class {
	#name : #RustStructExprStructNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'path',
		'leftBrace',
		'attrs',
		'rightBrace',
		'fields',
		'commas',
		'dotDot',
		'from'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustStructExprStructNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStructExprStruct: self
]

{ #category : #generated }
RustStructExprStructNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustStructExprStructNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustStructExprStructNode >> commas [
	^ commas
]

{ #category : #generated }
RustStructExprStructNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustStructExprStructNode >> compositeNodeVariables [
	^ #(#attrs #fields)
]

{ #category : #generated }
RustStructExprStructNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustStructExprStructNode >> dotDot [
	^ dotDot
]

{ #category : #generated }
RustStructExprStructNode >> dotDot: aSmaCCToken [
	dotDot := aSmaCCToken
]

{ #category : #generated }
RustStructExprStructNode >> fields [
	^ fields
]

{ #category : #generated }
RustStructExprStructNode >> fields: anOrderedCollection [
	self setParents: self fields to: nil.
	fields := anOrderedCollection.
	self setParents: self fields to: self
]

{ #category : #generated }
RustStructExprStructNode >> from [
	^ from
]

{ #category : #generated }
RustStructExprStructNode >> from: aRustExpressionNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aRustExpressionNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : #'generated-initialize-release' }
RustStructExprStructNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	fields := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustStructExprStructNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RustStructExprStructNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RustStructExprStructNode >> nodeVariables [
	^ #(#path #from)
]

{ #category : #generated }
RustStructExprStructNode >> path [
	^ path
]

{ #category : #generated }
RustStructExprStructNode >> path: aRustPathExpressionNode [
	self path notNil ifTrue: [ self path parent: nil ].
	path := aRustPathExpressionNode.
	self path notNil ifTrue: [ self path parent: self ]
]

{ #category : #generated }
RustStructExprStructNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RustStructExprStructNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RustStructExprStructNode >> tokenVariables [
	^ #(#leftBrace #rightBrace #dotDot)
]
