Class {
	#name : #TeradataBeginLoadingStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'beginToken',
		'loadingToken',
		'table',
		'errorfilesToken',
		'values',
		'commas',
		'withToken',
		'intervalToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataBeginLoadingStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBeginLoadingStatement: self
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> beginToken [
	^ beginToken
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> beginToken: aSmaCCToken [
	beginToken := aSmaCCToken
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> errorfilesToken [
	^ errorfilesToken
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> errorfilesToken: aSmaCCToken [
	errorfilesToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataBeginLoadingStatementNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> intervalToken [
	^ intervalToken
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> intervalToken: aSmaCCToken [
	intervalToken := aSmaCCToken
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> loadingToken [
	^ loadingToken
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> loadingToken: aSmaCCToken [
	loadingToken := aSmaCCToken
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> table [
	^ table
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> table: aSmaCCToken [
	table := aSmaCCToken
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> tokenVariables [
	^ #(#beginToken #loadingToken #table #errorfilesToken #withToken #intervalToken)
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> values [
	^ values
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> withToken [
	^ withToken
]

{ #category : #generated }
TeradataBeginLoadingStatementNode >> withToken: aSmaCCToken [
	withToken := aSmaCCToken
]
