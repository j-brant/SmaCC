Class {
	#name : 'RustAssociatedTypeBoundNode',
	#superclass : 'RustProgramNode',
	#instVars : [
		'name',
		'colon',
		'typeBounds',
		'pluses',
		'genericArgs'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssociatedTypeBound: self
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> colon [
	^ colon
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> compositeNodeVariables [
	^ #(#typeBounds)
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> compositeTokenVariables [
	^ #(#pluses)
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> genericArgs [
	^ genericArgs
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> genericArgs: aRustGenericArgsNode [
	self genericArgs notNil ifTrue: [ self genericArgs parent: nil ].
	genericArgs := aRustGenericArgsNode.
	self genericArgs notNil ifTrue: [ self genericArgs parent: self ]
]

{ #category : 'generated-initialize-release' }
RustAssociatedTypeBoundNode >> initialize [
	super initialize.
	typeBounds := OrderedCollection new: 2.
	pluses := OrderedCollection new: 2.
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> name [
	^ name
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> nodeVariables [
	^ #(#genericArgs)
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> pluses [
	^ pluses
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> pluses: anOrderedCollection [
	pluses := anOrderedCollection
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> tokenVariables [
	^ #(#name #colon)
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> typeBounds [
	^ typeBounds
]

{ #category : 'generated' }
RustAssociatedTypeBoundNode >> typeBounds: anOrderedCollection [
	self setParents: self typeBounds to: nil.
	typeBounds := anOrderedCollection.
	self setParents: self typeBounds to: self
]
