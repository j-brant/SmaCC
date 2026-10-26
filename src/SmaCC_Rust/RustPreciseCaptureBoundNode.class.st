Class {
	#name : 'RustPreciseCaptureBoundNode',
	#superclass : 'RustProgramNode',
	#instVars : [
		'useToken',
		'lt',
		'gt',
		'arguments',
		'commas'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPreciseCaptureBound: self
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> arguments [
	^ arguments
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> commas [
	^ commas
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> gt [
	^ gt
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
RustPreciseCaptureBoundNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> lt [
	^ lt
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> tokenVariables [
	^ #(#useToken #lt #gt)
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> useToken [
	^ useToken
]

{ #category : 'generated' }
RustPreciseCaptureBoundNode >> useToken: aSmaCCToken [
	useToken := aSmaCCToken
]
