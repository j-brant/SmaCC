Class {
	#name : #RustTupleStructPatternNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'path',
		'leftParen',
		'rightParen',
		'patterns',
		'bars',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTupleStructPatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTupleStructPattern: self
]

{ #category : #generated }
RustTupleStructPatternNode >> bars [
	^ bars
]

{ #category : #generated }
RustTupleStructPatternNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustTupleStructPatternNode >> commas [
	^ commas
]

{ #category : #generated }
RustTupleStructPatternNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustTupleStructPatternNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : #generated }
RustTupleStructPatternNode >> compositeTokenVariables [
	^ #(#bars #commas)
]

{ #category : #'generated-initialize-release' }
RustTupleStructPatternNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustTupleStructPatternNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustTupleStructPatternNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustTupleStructPatternNode >> nodeVariables [
	^ #(#path)
]

{ #category : #generated }
RustTupleStructPatternNode >> path [
	^ path
]

{ #category : #generated }
RustTupleStructPatternNode >> path: aRustPathExpressionNode [
	self path notNil ifTrue: [ self path parent: nil ].
	path := aRustPathExpressionNode.
	self path notNil ifTrue: [ self path parent: self ]
]

{ #category : #generated }
RustTupleStructPatternNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustTupleStructPatternNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustTupleStructPatternNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustTupleStructPatternNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustTupleStructPatternNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
