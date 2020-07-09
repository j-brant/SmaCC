Class {
	#name : #TeradataInsertQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'insertToken',
		'table',
		'valuesToken',
		'leftParens',
		'values',
		'commas',
		'rightParens',
		'intoToken',
		'query'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataInsertQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInsertQuery: self
]

{ #category : #generated }
TeradataInsertQueryNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataInsertQueryNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataInsertQueryNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataInsertQueryNode >> compositeTokenVariables [
	^ #(#leftParens #commas #rightParens)
]

{ #category : #'generated-initialize-release' }
TeradataInsertQueryNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataInsertQueryNode >> insertToken [
	^ insertToken
]

{ #category : #generated }
TeradataInsertQueryNode >> insertToken: aSmaCCToken [
	insertToken := aSmaCCToken
]

{ #category : #generated }
TeradataInsertQueryNode >> intoToken [
	^ intoToken
]

{ #category : #generated }
TeradataInsertQueryNode >> intoToken: aSmaCCToken [
	intoToken := aSmaCCToken
]

{ #category : #generated }
TeradataInsertQueryNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
TeradataInsertQueryNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
TeradataInsertQueryNode >> nodeVariables [
	^ #(#table #query)
]

{ #category : #generated }
TeradataInsertQueryNode >> query [
	^ query
]

{ #category : #generated }
TeradataInsertQueryNode >> query: aTeradataProgramNode [
	self query notNil
		ifTrue: [ self query parent: nil ].
	query := aTeradataProgramNode.
	self query notNil
		ifTrue: [ self query parent: self ]
]

{ #category : #generated }
TeradataInsertQueryNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
TeradataInsertQueryNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
TeradataInsertQueryNode >> table [
	^ table
]

{ #category : #generated }
TeradataInsertQueryNode >> table: aTeradataTableNode [
	self table notNil
		ifTrue: [ self table parent: nil ].
	table := aTeradataTableNode.
	self table notNil
		ifTrue: [ self table parent: self ]
]

{ #category : #generated }
TeradataInsertQueryNode >> tokenVariables [
	^ #(#insertToken #valuesToken #intoToken)
]

{ #category : #generated }
TeradataInsertQueryNode >> values [
	^ values
]

{ #category : #generated }
TeradataInsertQueryNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
TeradataInsertQueryNode >> valuesToken [
	^ valuesToken
]

{ #category : #generated }
TeradataInsertQueryNode >> valuesToken: aSmaCCToken [
	valuesToken := aSmaCCToken
]
