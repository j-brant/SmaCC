Class {
	#name : #TeradataPrimaryIndexNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'primaryToken',
		'indexToken',
		'name',
		'leftParen',
		'columns',
		'commas',
		'rightParen'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataPrimaryIndexNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPrimaryIndex: self
]

{ #category : #generated }
TeradataPrimaryIndexNode >> columns [
	^ columns
]

{ #category : #generated }
TeradataPrimaryIndexNode >> columns: anOrderedCollection [
	columns := anOrderedCollection
]

{ #category : #generated }
TeradataPrimaryIndexNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataPrimaryIndexNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataPrimaryIndexNode >> compositeTokenVariables [
	^ #(#columns #commas)
]

{ #category : #generated }
TeradataPrimaryIndexNode >> indexToken [
	^ indexToken
]

{ #category : #generated }
TeradataPrimaryIndexNode >> indexToken: aSmaCCToken [
	indexToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataPrimaryIndexNode >> initialize [
	super initialize.
	columns := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataPrimaryIndexNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataPrimaryIndexNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataPrimaryIndexNode >> name [
	^ name
]

{ #category : #generated }
TeradataPrimaryIndexNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataPrimaryIndexNode >> primaryToken [
	^ primaryToken
]

{ #category : #generated }
TeradataPrimaryIndexNode >> primaryToken: aSmaCCToken [
	primaryToken := aSmaCCToken
]

{ #category : #generated }
TeradataPrimaryIndexNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataPrimaryIndexNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataPrimaryIndexNode >> tokenVariables [
	^ #(#primaryToken #indexToken #name #leftParen #rightParen)
]
