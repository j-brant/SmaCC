Class {
	#name : 'RustItemNode',
	#superclass : 'RustProgramNode',
	#instVars : [
		'attrs'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustItemNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitItem: self
]

{ #category : 'generated' }
RustItemNode >> attrs [
	^ attrs
]

{ #category : 'generated' }
RustItemNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : 'generated' }
RustItemNode >> compositeNodeVariables [
	^ #(#attrs)
]

{ #category : 'generated-initialize-release' }
RustItemNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
]
