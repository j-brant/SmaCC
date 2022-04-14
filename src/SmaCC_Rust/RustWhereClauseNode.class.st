Class {
	#name : #RustWhereClauseNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'whereToken',
		'clauses',
		'commas'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustWhereClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhereClause: self
]

{ #category : #generated }
RustWhereClauseNode >> clauses [
	^ clauses
]

{ #category : #generated }
RustWhereClauseNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
RustWhereClauseNode >> commas [
	^ commas
]

{ #category : #generated }
RustWhereClauseNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustWhereClauseNode >> compositeNodeVariables [
	^ #(#clauses)
]

{ #category : #generated }
RustWhereClauseNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
RustWhereClauseNode >> initialize [
	super initialize.
	clauses := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustWhereClauseNode >> tokenVariables [
	^ #(#whereToken)
]

{ #category : #generated }
RustWhereClauseNode >> whereToken [
	^ whereToken
]

{ #category : #generated }
RustWhereClauseNode >> whereToken: aSmaCCToken [
	whereToken := aSmaCCToken
]
