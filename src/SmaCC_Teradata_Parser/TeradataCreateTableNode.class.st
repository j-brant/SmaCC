Class {
	#name : 'TeradataCreateTableNode',
	#superclass : 'TeradataProgramNode',
	#instVars : [
		'createToken',
		'tableToken',
		'table',
		'createOptions',
		'leftParen',
		'columns',
		'commas',
		'rightParen',
		'indexes',
		'multisetToken'
	],
	#category : 'SmaCC_Teradata_Parser',
	#package : 'SmaCC_Teradata_Parser'
}

{ #category : 'generated' }
TeradataCreateTableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTable: self
]

{ #category : 'generated' }
TeradataCreateTableNode >> columns [
	^ columns
]

{ #category : 'generated' }
TeradataCreateTableNode >> columns: anOrderedCollection [
	self setParents: self columns to: nil.
	columns := anOrderedCollection.
	self setParents: self columns to: self
]

{ #category : 'generated' }
TeradataCreateTableNode >> commas [
	^ commas
]

{ #category : 'generated' }
TeradataCreateTableNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
TeradataCreateTableNode >> compositeNodeVariables [
	^ #(#createOptions #columns #indexes)
]

{ #category : 'generated' }
TeradataCreateTableNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : 'generated' }
TeradataCreateTableNode >> createOptions [
	^ createOptions
]

{ #category : 'generated' }
TeradataCreateTableNode >> createOptions: anOrderedCollection [
	self setParents: self createOptions to: nil.
	createOptions := anOrderedCollection.
	self setParents: self createOptions to: self
]

{ #category : 'generated' }
TeradataCreateTableNode >> createToken [
	^ createToken
]

{ #category : 'generated' }
TeradataCreateTableNode >> createToken: aSmaCCToken [
	createToken := aSmaCCToken
]

{ #category : 'generated' }
TeradataCreateTableNode >> indexes [
	^ indexes
]

{ #category : 'generated' }
TeradataCreateTableNode >> indexes: anOrderedCollection [
	self setParents: self indexes to: nil.
	indexes := anOrderedCollection.
	self setParents: self indexes to: self
]

{ #category : 'generated-initialize-release' }
TeradataCreateTableNode >> initialize [
	super initialize.
	createOptions := OrderedCollection new: 2.
	columns := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	indexes := OrderedCollection new: 2.
]

{ #category : 'generated' }
TeradataCreateTableNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
TeradataCreateTableNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
TeradataCreateTableNode >> multisetToken [
	^ multisetToken
]

{ #category : 'generated' }
TeradataCreateTableNode >> multisetToken: aSmaCCToken [
	multisetToken := aSmaCCToken
]

{ #category : 'generated' }
TeradataCreateTableNode >> nodeVariables [
	^ #(#table)
]

{ #category : 'generated' }
TeradataCreateTableNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
TeradataCreateTableNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
TeradataCreateTableNode >> table [
	^ table
]

{ #category : 'generated' }
TeradataCreateTableNode >> table: aTeradataTableNode [
	self table notNil ifTrue: [ self table parent: nil ].
	table := aTeradataTableNode.
	self table notNil ifTrue: [ self table parent: self ]
]

{ #category : 'generated' }
TeradataCreateTableNode >> tableToken [
	^ tableToken
]

{ #category : 'generated' }
TeradataCreateTableNode >> tableToken: aSmaCCToken [
	tableToken := aSmaCCToken
]

{ #category : 'generated' }
TeradataCreateTableNode >> tokenVariables [
	^ #(#createToken #tableToken #leftParen #rightParen #multisetToken)
]
