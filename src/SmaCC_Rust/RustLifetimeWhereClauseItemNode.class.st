Class {
	#name : #RustLifetimeWhereClauseItemNode,
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
RustLifetimeWhereClauseItemNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLifetimeWhereClauseItem: self
]

{ #category : #generated }
RustLifetimeWhereClauseItemNode >> colon [
	^ colon
]

{ #category : #generated }
RustLifetimeWhereClauseItemNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustLifetimeWhereClauseItemNode >> compositeTokenVariables [
	^ #(#lifetimeBounds #pluses)
]

{ #category : #'generated-initialize-release' }
RustLifetimeWhereClauseItemNode >> initialize [
	super initialize.
	lifetimeBounds := OrderedCollection new: 2.
	pluses := OrderedCollection new: 2.
]

{ #category : #generated }
RustLifetimeWhereClauseItemNode >> lifetime [
	^ lifetime
]

{ #category : #generated }
RustLifetimeWhereClauseItemNode >> lifetime: aSmaCCToken [
	lifetime := aSmaCCToken
]

{ #category : #generated }
RustLifetimeWhereClauseItemNode >> lifetimeBounds [
	^ lifetimeBounds
]

{ #category : #generated }
RustLifetimeWhereClauseItemNode >> lifetimeBounds: anOrderedCollection [
	lifetimeBounds := anOrderedCollection
]

{ #category : #generated }
RustLifetimeWhereClauseItemNode >> pluses [
	^ pluses
]

{ #category : #generated }
RustLifetimeWhereClauseItemNode >> pluses: anOrderedCollection [
	pluses := anOrderedCollection
]

{ #category : #generated }
RustLifetimeWhereClauseItemNode >> tokenVariables [
	^ #(#lifetime #colon)
]
