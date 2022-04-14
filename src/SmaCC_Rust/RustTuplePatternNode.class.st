Class {
	#name : #RustTuplePatternNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'leftParen',
		'rightParen',
		'patterns',
		'bars',
		'commas',
		'restPattern'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTuplePatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTuplePattern: self
]

{ #category : #generated }
RustTuplePatternNode >> bars [
	^ bars
]

{ #category : #generated }
RustTuplePatternNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustTuplePatternNode >> commas [
	^ commas
]

{ #category : #generated }
RustTuplePatternNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustTuplePatternNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : #generated }
RustTuplePatternNode >> compositeTokenVariables [
	^ #(#bars #commas)
]

{ #category : #'generated-initialize-release' }
RustTuplePatternNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustTuplePatternNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustTuplePatternNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustTuplePatternNode >> nodeVariables [
	^ #(#restPattern)
]

{ #category : #generated }
RustTuplePatternNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustTuplePatternNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustTuplePatternNode >> restPattern [
	^ restPattern
]

{ #category : #generated }
RustTuplePatternNode >> restPattern: aRustRestPatternNode [
	self restPattern notNil ifTrue: [ self restPattern parent: nil ].
	restPattern := aRustRestPatternNode.
	self restPattern notNil ifTrue: [ self restPattern parent: self ]
]

{ #category : #generated }
RustTuplePatternNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustTuplePatternNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustTuplePatternNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
