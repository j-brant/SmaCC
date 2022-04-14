Class {
	#name : #RustStructPatternNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'path',
		'leftBrace',
		'rightBrace',
		'fields',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustStructPatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStructPattern: self
]

{ #category : #generated }
RustStructPatternNode >> commas [
	^ commas
]

{ #category : #generated }
RustStructPatternNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustStructPatternNode >> compositeNodeVariables [
	^ #(#fields)
]

{ #category : #generated }
RustStructPatternNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustStructPatternNode >> fields [
	^ fields
]

{ #category : #generated }
RustStructPatternNode >> fields: anOrderedCollection [
	self setParents: self fields to: nil.
	fields := anOrderedCollection.
	self setParents: self fields to: self
]

{ #category : #'generated-initialize-release' }
RustStructPatternNode >> initialize [
	super initialize.
	fields := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustStructPatternNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RustStructPatternNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RustStructPatternNode >> nodeVariables [
	^ #(#path)
]

{ #category : #generated }
RustStructPatternNode >> path [
	^ path
]

{ #category : #generated }
RustStructPatternNode >> path: aRustPathExpressionNode [
	self path notNil ifTrue: [ self path parent: nil ].
	path := aRustPathExpressionNode.
	self path notNil ifTrue: [ self path parent: self ]
]

{ #category : #generated }
RustStructPatternNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RustStructPatternNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RustStructPatternNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
