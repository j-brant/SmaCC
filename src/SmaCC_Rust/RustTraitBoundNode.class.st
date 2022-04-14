Class {
	#name : #RustTraitBoundNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'type',
		'forToken',
		'lt',
		'gt',
		'params',
		'commas',
		'question',
		'leftParen',
		'rightParen'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTraitBoundNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTraitBound: self
]

{ #category : #generated }
RustTraitBoundNode >> commas [
	^ commas
]

{ #category : #generated }
RustTraitBoundNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustTraitBoundNode >> compositeNodeVariables [
	^ #(#params)
]

{ #category : #generated }
RustTraitBoundNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustTraitBoundNode >> forToken [
	^ forToken
]

{ #category : #generated }
RustTraitBoundNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
RustTraitBoundNode >> gt [
	^ gt
]

{ #category : #generated }
RustTraitBoundNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustTraitBoundNode >> initialize [
	super initialize.
	params := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustTraitBoundNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustTraitBoundNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustTraitBoundNode >> lt [
	^ lt
]

{ #category : #generated }
RustTraitBoundNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustTraitBoundNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
RustTraitBoundNode >> params [
	^ params
]

{ #category : #generated }
RustTraitBoundNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
RustTraitBoundNode >> question [
	^ question
]

{ #category : #generated }
RustTraitBoundNode >> question: aSmaCCToken [
	question := aSmaCCToken
]

{ #category : #generated }
RustTraitBoundNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustTraitBoundNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustTraitBoundNode >> tokenVariables [
	^ #(#forToken #lt #gt #question #leftParen #rightParen)
]

{ #category : #generated }
RustTraitBoundNode >> type [
	^ type
]

{ #category : #generated }
RustTraitBoundNode >> type: aRustTypePathNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustTypePathNode.
	self type notNil ifTrue: [ self type parent: self ]
]
