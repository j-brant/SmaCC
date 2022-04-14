Class {
	#name : #RustPathNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'names',
		'separators'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustPathNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPath: self
]

{ #category : #generated }
RustPathNode >> compositeTokenVariables [
	^ #(#names #separators)
]

{ #category : #'generated-initialize-release' }
RustPathNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	separators := OrderedCollection new: 2.
]

{ #category : #generated }
RustPathNode >> names [
	^ names
]

{ #category : #generated }
RustPathNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
RustPathNode >> separators [
	^ separators
]

{ #category : #generated }
RustPathNode >> separators: anOrderedCollection [
	separators := anOrderedCollection
]
