Class {
	#name : #TeradataRecursiveQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'withToken',
		'recursiveToken',
		'name',
		'leftParens',
		'values',
		'commas',
		'rightParens',
		'asToken',
		'query',
		'statement'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataRecursiveQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRecursiveQuery: self
]

{ #category : #generated }
TeradataRecursiveQueryNode >> asToken [
	^ asToken
]

{ #category : #generated }
TeradataRecursiveQueryNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
TeradataRecursiveQueryNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataRecursiveQueryNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataRecursiveQueryNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataRecursiveQueryNode >> compositeTokenVariables [
	^ #(#leftParens #commas #rightParens)
]

{ #category : #'generated-initialize-release' }
TeradataRecursiveQueryNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataRecursiveQueryNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
TeradataRecursiveQueryNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
TeradataRecursiveQueryNode >> name [
	^ name
]

{ #category : #generated }
TeradataRecursiveQueryNode >> name: aTeradataIdentifierNameNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aTeradataIdentifierNameNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
TeradataRecursiveQueryNode >> nodeVariables [
	^ #(#name #query #statement)
]

{ #category : #generated }
TeradataRecursiveQueryNode >> query [
	^ query
]

{ #category : #generated }
TeradataRecursiveQueryNode >> query: aTeradataProgramNode [
	self query notNil
		ifTrue: [ self query parent: nil ].
	query := aTeradataProgramNode.
	self query notNil
		ifTrue: [ self query parent: self ]
]

{ #category : #generated }
TeradataRecursiveQueryNode >> recursiveToken [
	^ recursiveToken
]

{ #category : #generated }
TeradataRecursiveQueryNode >> recursiveToken: aSmaCCToken [
	recursiveToken := aSmaCCToken
]

{ #category : #generated }
TeradataRecursiveQueryNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
TeradataRecursiveQueryNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
TeradataRecursiveQueryNode >> statement [
	^ statement
]

{ #category : #generated }
TeradataRecursiveQueryNode >> statement: aTeradataProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aTeradataProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
TeradataRecursiveQueryNode >> tokenVariables [
	^ #(#withToken #recursiveToken #asToken)
]

{ #category : #generated }
TeradataRecursiveQueryNode >> values [
	^ values
]

{ #category : #generated }
TeradataRecursiveQueryNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
TeradataRecursiveQueryNode >> withToken [
	^ withToken
]

{ #category : #generated }
TeradataRecursiveQueryNode >> withToken: aSmaCCToken [
	withToken := aSmaCCToken
]
