Class {
	#name : #RustIdentifierPatternNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'name',
		'atToken',
		'patterns',
		'bars',
		'mutToken',
		'refToken'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustIdentifierPatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifierPattern: self
]

{ #category : #generated }
RustIdentifierPatternNode >> atToken [
	^ atToken
]

{ #category : #generated }
RustIdentifierPatternNode >> atToken: aSmaCCToken [
	atToken := aSmaCCToken
]

{ #category : #generated }
RustIdentifierPatternNode >> bars [
	^ bars
]

{ #category : #generated }
RustIdentifierPatternNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustIdentifierPatternNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : #generated }
RustIdentifierPatternNode >> compositeTokenVariables [
	^ #(#bars)
]

{ #category : #'generated-initialize-release' }
RustIdentifierPatternNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
]

{ #category : #generated }
RustIdentifierPatternNode >> mutToken [
	^ mutToken
]

{ #category : #generated }
RustIdentifierPatternNode >> mutToken: aSmaCCToken [
	mutToken := aSmaCCToken
]

{ #category : #generated }
RustIdentifierPatternNode >> name [
	^ name
]

{ #category : #generated }
RustIdentifierPatternNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustIdentifierPatternNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustIdentifierPatternNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustIdentifierPatternNode >> refToken [
	^ refToken
]

{ #category : #generated }
RustIdentifierPatternNode >> refToken: aSmaCCToken [
	refToken := aSmaCCToken
]

{ #category : #generated }
RustIdentifierPatternNode >> tokenVariables [
	^ #(#name #atToken #mutToken #refToken)
]
