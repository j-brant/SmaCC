Class {
	#name : #TeradataLockTableStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'lockToken',
		'table',
		'forToken',
		'lock',
		'statement',
		'tableToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataLockTableStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLockTableStatement: self
]

{ #category : #generated }
TeradataLockTableStatementNode >> forToken [
	^ forToken
]

{ #category : #generated }
TeradataLockTableStatementNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
TeradataLockTableStatementNode >> lock [
	^ lock
]

{ #category : #generated }
TeradataLockTableStatementNode >> lock: aSmaCCToken [
	lock := aSmaCCToken
]

{ #category : #generated }
TeradataLockTableStatementNode >> lockToken [
	^ lockToken
]

{ #category : #generated }
TeradataLockTableStatementNode >> lockToken: aSmaCCToken [
	lockToken := aSmaCCToken
]

{ #category : #generated }
TeradataLockTableStatementNode >> nodeVariables [
	^ #(#statement)
]

{ #category : #generated }
TeradataLockTableStatementNode >> statement [
	^ statement
]

{ #category : #generated }
TeradataLockTableStatementNode >> statement: aTeradataProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aTeradataProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
TeradataLockTableStatementNode >> table [
	^ table
]

{ #category : #generated }
TeradataLockTableStatementNode >> table: aSmaCCToken [
	table := aSmaCCToken
]

{ #category : #generated }
TeradataLockTableStatementNode >> tableToken [
	^ tableToken
]

{ #category : #generated }
TeradataLockTableStatementNode >> tableToken: aSmaCCToken [
	tableToken := aSmaCCToken
]

{ #category : #generated }
TeradataLockTableStatementNode >> tokenVariables [
	^ #(#lockToken #table #forToken #lock #tableToken)
]
