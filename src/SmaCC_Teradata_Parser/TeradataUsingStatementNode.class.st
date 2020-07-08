Class {
	#name : #TeradataUsingStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'usingToken',
		'values',
		'commas',
		'statement'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataUsingStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUsingStatement: self
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
	^ #(#values)
]

{ #category : #generated }
TeradataUsingStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
TeradataUsingStatementNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataUsingStatementNode >> nodeVariables [
	^ #(#statement)
]

{ #category : #generated }
TeradataUsingStatementNode >> statement [
	^ statement
]

{ #category : #generated }
TeradataUsingStatementNode >> statement: aTeradataProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aTeradataProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
TeradataUsingStatementNode >> tokenVariables [
	^ #(#usingToken)
]

{ #category : #generated }
TeradataUsingStatementNode >> usingToken [
	^ usingToken
]

{ #category : #generated }
TeradataUsingStatementNode >> usingToken: aSmaCCToken [
	usingToken := aSmaCCToken
]

{ #category : #generated }
TeradataUsingStatementNode >> values [
	^ values
]

{ #category : #generated }
TeradataUsingStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
