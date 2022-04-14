Class {
	#name : #RustTypeBoundWhereClauseItemNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'type',
		'colon',
		'typeBounds',
		'pluses',
		'forToken',
		'lt',
		'gt',
		'params',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeBoundWhereClauseItem: self
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> colon [
	^ colon
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> commas [
	^ commas
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> compositeNodeVariables [
	^ #(#typeBounds #params)
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> compositeTokenVariables [
	^ #(#pluses #commas)
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> forToken [
	^ forToken
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> gt [
	^ gt
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustTypeBoundWhereClauseItemNode >> initialize [
	super initialize.
	typeBounds := OrderedCollection new: 2.
	pluses := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> lt [
	^ lt
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> params [
	^ params
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> pluses [
	^ pluses
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> pluses: anOrderedCollection [
	pluses := anOrderedCollection
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> tokenVariables [
	^ #(#colon #forToken #lt #gt)
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> type [
	^ type
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> typeBounds [
	^ typeBounds
]

{ #category : #generated }
RustTypeBoundWhereClauseItemNode >> typeBounds: anOrderedCollection [
	self setParents: self typeBounds to: nil.
	typeBounds := anOrderedCollection.
	self setParents: self typeBounds to: self
]
