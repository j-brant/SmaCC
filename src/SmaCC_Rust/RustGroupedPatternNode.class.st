Class {
	#name : #RustGroupedPatternNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'leftParen',
		'patterns',
		'bars',
		'rightParen'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustGroupedPatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGroupedPattern: self
]

{ #category : #generated }
RustGroupedPatternNode >> bars [
	^ bars
]

{ #category : #generated }
RustGroupedPatternNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustGroupedPatternNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : #generated }
RustGroupedPatternNode >> compositeTokenVariables [
	^ #(#bars)
]

{ #category : #'generated-initialize-release' }
RustGroupedPatternNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
]

{ #category : #generated }
RustGroupedPatternNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustGroupedPatternNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustGroupedPatternNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustGroupedPatternNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustGroupedPatternNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustGroupedPatternNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustGroupedPatternNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
