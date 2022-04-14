Class {
	#name : #RustStructPatternFieldNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'attrs',
		'name',
		'colon',
		'patterns',
		'bars',
		'mutToken',
		'refToken'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustStructPatternFieldNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStructPatternField: self
]

{ #category : #generated }
RustStructPatternFieldNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustStructPatternFieldNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustStructPatternFieldNode >> bars [
	^ bars
]

{ #category : #generated }
RustStructPatternFieldNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustStructPatternFieldNode >> colon [
	^ colon
]

{ #category : #generated }
RustStructPatternFieldNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustStructPatternFieldNode >> compositeNodeVariables [
	^ #(#attrs #patterns)
]

{ #category : #generated }
RustStructPatternFieldNode >> compositeTokenVariables [
	^ #(#bars)
]

{ #category : #'generated-initialize-release' }
RustStructPatternFieldNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
]

{ #category : #generated }
RustStructPatternFieldNode >> mutToken [
	^ mutToken
]

{ #category : #generated }
RustStructPatternFieldNode >> mutToken: aSmaCCToken [
	mutToken := aSmaCCToken
]

{ #category : #generated }
RustStructPatternFieldNode >> name [
	^ name
]

{ #category : #generated }
RustStructPatternFieldNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustStructPatternFieldNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustStructPatternFieldNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustStructPatternFieldNode >> refToken [
	^ refToken
]

{ #category : #generated }
RustStructPatternFieldNode >> refToken: aSmaCCToken [
	refToken := aSmaCCToken
]

{ #category : #generated }
RustStructPatternFieldNode >> tokenVariables [
	^ #(#name #colon #mutToken #refToken)
]
