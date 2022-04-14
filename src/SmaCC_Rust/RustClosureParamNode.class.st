Class {
	#name : #RustClosureParamNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'attrs',
		'patterns',
		'bars',
		'colon',
		'type'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustClosureParamNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClosureParam: self
]

{ #category : #generated }
RustClosureParamNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustClosureParamNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustClosureParamNode >> bars [
	^ bars
]

{ #category : #generated }
RustClosureParamNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustClosureParamNode >> colon [
	^ colon
]

{ #category : #generated }
RustClosureParamNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustClosureParamNode >> compositeNodeVariables [
	^ #(#attrs #patterns)
]

{ #category : #generated }
RustClosureParamNode >> compositeTokenVariables [
	^ #(#bars)
]

{ #category : #'generated-initialize-release' }
RustClosureParamNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
]

{ #category : #generated }
RustClosureParamNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
RustClosureParamNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustClosureParamNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustClosureParamNode >> tokenVariables [
	^ #(#colon)
]

{ #category : #generated }
RustClosureParamNode >> type [
	^ type
]

{ #category : #generated }
RustClosureParamNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]
