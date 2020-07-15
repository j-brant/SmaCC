Class {
	#name : #TeradataWithQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'withToken',
		'withTables',
		'commas',
		'statement',
		'recursiveToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataWithQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWithQuery: self
]

{ #category : #generated }
TeradataWithQueryNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataWithQueryNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataWithQueryNode >> compositeNodeVariables [
	^ #(#withTables)
]

{ #category : #generated }
TeradataWithQueryNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
TeradataWithQueryNode >> initialize [
	super initialize.
	withTables := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataWithQueryNode >> nodeVariables [
	^ #(#statement)
]

{ #category : #generated }
TeradataWithQueryNode >> recursiveToken [
	^ recursiveToken
]

{ #category : #generated }
TeradataWithQueryNode >> recursiveToken: aSmaCCToken [
	recursiveToken := aSmaCCToken
]

{ #category : #generated }
TeradataWithQueryNode >> statement [
	^ statement
]

{ #category : #generated }
TeradataWithQueryNode >> statement: aTeradataProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aTeradataProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
TeradataWithQueryNode >> tokenVariables [
	^ #(#withToken #recursiveToken)
]

{ #category : #generated }
TeradataWithQueryNode >> withTables [
	^ withTables
]

{ #category : #generated }
TeradataWithQueryNode >> withTables: anOrderedCollection [
	self setParents: self withTables to: nil.
	withTables := anOrderedCollection.
	self setParents: self withTables to: self
]

{ #category : #generated }
TeradataWithQueryNode >> withToken [
	^ withToken
]

{ #category : #generated }
TeradataWithQueryNode >> withToken: aSmaCCToken [
	withToken := aSmaCCToken
]
