Class {
	#name : #RustGenericArgsNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'lt',
		'gt',
		'genericArgs',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustGenericArgsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGenericArgs: self
]

{ #category : #generated }
RustGenericArgsNode >> commas [
	^ commas
]

{ #category : #generated }
RustGenericArgsNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustGenericArgsNode >> compositeNodeVariables [
	^ #(#genericArgs)
]

{ #category : #generated }
RustGenericArgsNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
RustGenericArgsNode >> genericArgs [
	^ genericArgs
]

{ #category : #generated }
RustGenericArgsNode >> genericArgs: anOrderedCollection [
	self setParents: self genericArgs to: nil.
	genericArgs := anOrderedCollection.
	self setParents: self genericArgs to: self
]

{ #category : #generated }
RustGenericArgsNode >> gt [
	^ gt
]

{ #category : #generated }
RustGenericArgsNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustGenericArgsNode >> initialize [
	super initialize.
	genericArgs := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustGenericArgsNode >> lt [
	^ lt
]

{ #category : #generated }
RustGenericArgsNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustGenericArgsNode >> tokenVariables [
	^ #(#lt #gt)
]
