Class {
	#name : #TeradataIndexNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'indexToken',
		'name',
		'leftParen',
		'columns',
		'commas',
		'rightParen',
		'partition',
		'primaryToken',
		'uniqueToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataIndexNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIndex: self
]

{ #category : #generated }
TeradataIndexNode >> columns [
	^ columns
]

{ #category : #generated }
TeradataIndexNode >> columns: anOrderedCollection [
	columns := anOrderedCollection
]

{ #category : #generated }
TeradataIndexNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataIndexNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataIndexNode >> compositeTokenVariables [
	^ #(#columns #commas)
]

{ #category : #generated }
TeradataIndexNode >> indexToken [
	^ indexToken
]

{ #category : #generated }
TeradataIndexNode >> indexToken: aSmaCCToken [
	indexToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataIndexNode >> initialize [
	super initialize.
	columns := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataIndexNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataIndexNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataIndexNode >> name [
	^ name
]

{ #category : #generated }
TeradataIndexNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataIndexNode >> nodeVariables [
	^ #(#partition)
]

{ #category : #generated }
TeradataIndexNode >> partition [
	^ partition
]

{ #category : #generated }
TeradataIndexNode >> partition: aTeradataPartitionByExpressionNode [
	self partition notNil ifTrue: [ self partition parent: nil ].
	partition := aTeradataPartitionByExpressionNode.
	self partition notNil ifTrue: [ self partition parent: self ]
]

{ #category : #generated }
TeradataIndexNode >> primaryToken [
	^ primaryToken
]

{ #category : #generated }
TeradataIndexNode >> primaryToken: aSmaCCToken [
	primaryToken := aSmaCCToken
]

{ #category : #generated }
TeradataIndexNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataIndexNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataIndexNode >> tokenVariables [
	^ #(#indexToken #name #leftParen #rightParen #primaryToken #uniqueToken)
]

{ #category : #generated }
TeradataIndexNode >> uniqueToken [
	^ uniqueToken
]

{ #category : #generated }
TeradataIndexNode >> uniqueToken: aSmaCCToken [
	uniqueToken := aSmaCCToken
]
