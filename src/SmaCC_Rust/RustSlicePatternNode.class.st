Class {
	#name : #RustSlicePatternNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'leftBracket',
		'rightBracket',
		'patterns',
		'bars',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustSlicePatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSlicePattern: self
]

{ #category : #generated }
RustSlicePatternNode >> bars [
	^ bars
]

{ #category : #generated }
RustSlicePatternNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustSlicePatternNode >> commas [
	^ commas
]

{ #category : #generated }
RustSlicePatternNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustSlicePatternNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : #generated }
RustSlicePatternNode >> compositeTokenVariables [
	^ #(#bars #commas)
]

{ #category : #'generated-initialize-release' }
RustSlicePatternNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustSlicePatternNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
RustSlicePatternNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
RustSlicePatternNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustSlicePatternNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustSlicePatternNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
RustSlicePatternNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
RustSlicePatternNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]
