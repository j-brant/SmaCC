Class {
	#name : #RustLifetimeParamNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'lifetime',
		'colon',
		'lifetimeBounds',
		'pluses'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustLifetimeParamNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLifetimeParam: self
]

{ #category : #generated }
RustLifetimeParamNode >> colon [
	^ colon
]

{ #category : #generated }
RustLifetimeParamNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustLifetimeParamNode >> compositeTokenVariables [
	^ #(#lifetimeBounds #pluses)
]

{ #category : #'generated-initialize-release' }
RustLifetimeParamNode >> initialize [
	super initialize.
	lifetimeBounds := OrderedCollection new: 2.
	pluses := OrderedCollection new: 2.
]

{ #category : #generated }
RustLifetimeParamNode >> lifetime [
	^ lifetime
]

{ #category : #generated }
RustLifetimeParamNode >> lifetime: aSmaCCToken [
	lifetime := aSmaCCToken
]

{ #category : #generated }
RustLifetimeParamNode >> lifetimeBounds [
	^ lifetimeBounds
]

{ #category : #generated }
RustLifetimeParamNode >> lifetimeBounds: anOrderedCollection [
	lifetimeBounds := anOrderedCollection
]

{ #category : #generated }
RustLifetimeParamNode >> pluses [
	^ pluses
]

{ #category : #generated }
RustLifetimeParamNode >> pluses: anOrderedCollection [
	pluses := anOrderedCollection
]

{ #category : #generated }
RustLifetimeParamNode >> tokenVariables [
	^ #(#lifetime #colon)
]
