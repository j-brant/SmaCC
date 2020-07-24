Class {
	#name : #TeradataRollbackStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'rollbackToken',
		'workToken',
		'work',
		'fromToken',
		'tables',
		'commas',
		'where'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataRollbackStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRollbackStatement: self
]

{ #category : #generated }
TeradataRollbackStatementNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataRollbackStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataRollbackStatementNode >> compositeNodeVariables [
	^ #(#tables)
]

{ #category : #generated }
TeradataRollbackStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
TeradataRollbackStatementNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
TeradataRollbackStatementNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataRollbackStatementNode >> initialize [
	super initialize.
	tables := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataRollbackStatementNode >> nodeVariables [
	^ #(#where)
]

{ #category : #generated }
TeradataRollbackStatementNode >> rollbackToken [
	^ rollbackToken
]

{ #category : #generated }
TeradataRollbackStatementNode >> rollbackToken: aSmaCCToken [
	rollbackToken := aSmaCCToken
]

{ #category : #generated }
TeradataRollbackStatementNode >> tables [
	^ tables
]

{ #category : #generated }
TeradataRollbackStatementNode >> tables: anOrderedCollection [
	self setParents: self tables to: nil.
	tables := anOrderedCollection.
	self setParents: self tables to: self
]

{ #category : #generated }
TeradataRollbackStatementNode >> tokenVariables [
	^ #(#rollbackToken #workToken #work #fromToken)
]

{ #category : #generated }
TeradataRollbackStatementNode >> where [
	^ where
]

{ #category : #generated }
TeradataRollbackStatementNode >> where: aTeradataWhereExpressionNode [
	self where notNil
		ifTrue: [ self where parent: nil ].
	where := aTeradataWhereExpressionNode.
	self where notNil
		ifTrue: [ self where parent: self ]
]

{ #category : #generated }
TeradataRollbackStatementNode >> work [
	^ work
]

{ #category : #generated }
TeradataRollbackStatementNode >> work: aSmaCCToken [
	work := aSmaCCToken
]

{ #category : #generated }
TeradataRollbackStatementNode >> workToken [
	^ workToken
]

{ #category : #generated }
TeradataRollbackStatementNode >> workToken: aSmaCCToken [
	workToken := aSmaCCToken
]
