Class {
	#name : #TeradataUsingStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'usingToken',
		'columns',
		'commas',
		'statement',
		'leftParen',
		'rightParen'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataUsingStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUsingStatement: self
]

{ #category : #generated }
TeradataUsingStatementNode >> columns [
	^ columns
]

{ #category : #generated }
TeradataUsingStatementNode >> columns: anOrderedCollection [
	self setParents: self columns to: nil.
	columns := anOrderedCollection.
	self setParents: self columns to: self
]

{ #category : #generated }
TeradataUsingStatementNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataUsingStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataUsingStatementNode >> compositeNodeVariables [
	^ #(#columns)
]

{ #category : #generated }
TeradataUsingStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
TeradataUsingStatementNode >> initialize [
	super initialize.
	columns := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataUsingStatementNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataUsingStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataUsingStatementNode >> nodeVariables [
	^ #(#statement)
]

{ #category : #generated }
TeradataUsingStatementNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataUsingStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataUsingStatementNode >> statement [
	^ statement
]

{ #category : #generated }
TeradataUsingStatementNode >> statement: aTeradataProgramNode [
	self statement notNil ifTrue: [ self statement parent: nil ].
	statement := aTeradataProgramNode.
	self statement notNil ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
TeradataUsingStatementNode >> tokenVariables [
	^ #(#usingToken #leftParen #rightParen)
]

{ #category : #generated }
TeradataUsingStatementNode >> usingToken [
	^ usingToken
]

{ #category : #generated }
TeradataUsingStatementNode >> usingToken: aSmaCCToken [
	usingToken := aSmaCCToken
]
