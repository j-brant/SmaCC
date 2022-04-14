Class {
	#name : #RustTupleTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'leftParen',
		'rightParen',
		'types',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTupleTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTupleType: self
]

{ #category : #generated }
RustTupleTypeNode >> commas [
	^ commas
]

{ #category : #generated }
RustTupleTypeNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustTupleTypeNode >> compositeNodeVariables [
	^ #(#types)
]

{ #category : #generated }
RustTupleTypeNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
RustTupleTypeNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustTupleTypeNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustTupleTypeNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustTupleTypeNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustTupleTypeNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustTupleTypeNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]

{ #category : #generated }
RustTupleTypeNode >> types [
	^ types
]

{ #category : #generated }
RustTupleTypeNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
