Class {
	#name : #TeradataCheckWorkloadStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'checkToken',
		'workloadToken',
		'forToken',
		'beginToken',
		'loadingToken',
		'database',
		'table',
		'values',
		'commas',
		'withToken',
		'intervalToken',
		'endToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCheckWorkloadStatement: self
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> beginToken [
	^ beginToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> beginToken: aSmaCCToken [
	beginToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> checkToken [
	^ checkToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> checkToken: aSmaCCToken [
	checkToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> database [
	^ database
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> database: aSmaCCToken [
	database := aSmaCCToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> forToken [
	^ forToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataCheckWorkloadStatementNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> intervalToken [
	^ intervalToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> intervalToken: aSmaCCToken [
	intervalToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> loadingToken [
	^ loadingToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> loadingToken: aSmaCCToken [
	loadingToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> table [
	^ table
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> table: aSmaCCToken [
	table := aSmaCCToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> tokenVariables [
	^ #(#checkToken #workloadToken #forToken #beginToken #loadingToken #database #table #withToken #intervalToken #endToken)
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> values [
	^ values
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> withToken [
	^ withToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> withToken: aSmaCCToken [
	withToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> workloadToken [
	^ workloadToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> workloadToken: aSmaCCToken [
	workloadToken := aSmaCCToken
]
