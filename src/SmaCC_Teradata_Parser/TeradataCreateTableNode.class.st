Class {
	#name : #TeradataCreateTableNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'createToken',
		'tableToken',
		'table',
		'commas',
		'noTokens',
		'fallbackTokens',
		'beforeTokens',
		'journalTokens',
		'afterTokens',
		'checksumTokens',
		'equalses',
		'values',
		'defaultTokens',
		'mergeBlockRatioTokens',
		'leftParen',
		'columns',
		'rightParen',
		'indexes',
		'multisetToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCreateTableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTable: self
]

{ #category : #generated }
TeradataCreateTableNode >> afterTokens [
	^ afterTokens
]

{ #category : #generated }
TeradataCreateTableNode >> afterTokens: anOrderedCollection [
	afterTokens := anOrderedCollection
]

{ #category : #generated }
TeradataCreateTableNode >> beforeTokens [
	^ beforeTokens
]

{ #category : #generated }
TeradataCreateTableNode >> beforeTokens: anOrderedCollection [
	beforeTokens := anOrderedCollection
]

{ #category : #generated }
TeradataCreateTableNode >> checksumTokens [
	^ checksumTokens
]

{ #category : #generated }
TeradataCreateTableNode >> checksumTokens: anOrderedCollection [
	checksumTokens := anOrderedCollection
]

{ #category : #generated }
TeradataCreateTableNode >> columns [
	^ columns
]

{ #category : #generated }
TeradataCreateTableNode >> columns: anOrderedCollection [
	self setParents: self columns to: nil.
	columns := anOrderedCollection.
	self setParents: self columns to: self
]

{ #category : #generated }
TeradataCreateTableNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataCreateTableNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataCreateTableNode >> compositeNodeVariables [
	^ #(#columns #indexes)
]

{ #category : #generated }
TeradataCreateTableNode >> compositeTokenVariables [
	^ #(#commas #noTokens #fallbackTokens #beforeTokens #journalTokens #afterTokens #checksumTokens #equalses #values #defaultTokens #mergeBlockRatioTokens)
]

{ #category : #generated }
TeradataCreateTableNode >> createToken [
	^ createToken
]

{ #category : #generated }
TeradataCreateTableNode >> createToken: aSmaCCToken [
	createToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableNode >> defaultTokens [
	^ defaultTokens
]

{ #category : #generated }
TeradataCreateTableNode >> defaultTokens: anOrderedCollection [
	defaultTokens := anOrderedCollection
]

{ #category : #generated }
TeradataCreateTableNode >> equalses [
	^ equalses
]

{ #category : #generated }
TeradataCreateTableNode >> equalses: anOrderedCollection [
	equalses := anOrderedCollection
]

{ #category : #generated }
TeradataCreateTableNode >> fallbackTokens [
	^ fallbackTokens
]

{ #category : #generated }
TeradataCreateTableNode >> fallbackTokens: anOrderedCollection [
	fallbackTokens := anOrderedCollection
]

{ #category : #generated }
TeradataCreateTableNode >> indexes [
	^ indexes
]

{ #category : #generated }
TeradataCreateTableNode >> indexes: anOrderedCollection [
	self setParents: self indexes to: nil.
	indexes := anOrderedCollection.
	self setParents: self indexes to: self
]

{ #category : #'generated-initialize-release' }
TeradataCreateTableNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	noTokens := OrderedCollection new: 2.
	fallbackTokens := OrderedCollection new: 2.
	beforeTokens := OrderedCollection new: 2.
	journalTokens := OrderedCollection new: 2.
	afterTokens := OrderedCollection new: 2.
	checksumTokens := OrderedCollection new: 2.
	equalses := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	defaultTokens := OrderedCollection new: 2.
	mergeBlockRatioTokens := OrderedCollection new: 2.
	columns := OrderedCollection new: 2.
	indexes := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataCreateTableNode >> journalTokens [
	^ journalTokens
]

{ #category : #generated }
TeradataCreateTableNode >> journalTokens: anOrderedCollection [
	journalTokens := anOrderedCollection
]

{ #category : #generated }
TeradataCreateTableNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataCreateTableNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableNode >> mergeBlockRatioTokens [
	^ mergeBlockRatioTokens
]

{ #category : #generated }
TeradataCreateTableNode >> mergeBlockRatioTokens: anOrderedCollection [
	mergeBlockRatioTokens := anOrderedCollection
]

{ #category : #generated }
TeradataCreateTableNode >> multisetToken [
	^ multisetToken
]

{ #category : #generated }
TeradataCreateTableNode >> multisetToken: aSmaCCToken [
	multisetToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableNode >> noTokens [
	^ noTokens
]

{ #category : #generated }
TeradataCreateTableNode >> noTokens: anOrderedCollection [
	noTokens := anOrderedCollection
]

{ #category : #generated }
TeradataCreateTableNode >> nodeVariables [
	^ #(#table)
]

{ #category : #generated }
TeradataCreateTableNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataCreateTableNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableNode >> table [
	^ table
]

{ #category : #generated }
TeradataCreateTableNode >> table: aTeradataTableNode [
	self table notNil ifTrue: [ self table parent: nil ].
	table := aTeradataTableNode.
	self table notNil ifTrue: [ self table parent: self ]
]

{ #category : #generated }
TeradataCreateTableNode >> tableToken [
	^ tableToken
]

{ #category : #generated }
TeradataCreateTableNode >> tableToken: aSmaCCToken [
	tableToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableNode >> tokenVariables [
	^ #(#createToken #tableToken #leftParen #rightParen #multisetToken)
]

{ #category : #generated }
TeradataCreateTableNode >> values [
	^ values
]

{ #category : #generated }
TeradataCreateTableNode >> values: anOrderedCollection [
	values := anOrderedCollection
]
