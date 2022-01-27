Class {
	#name : #TeradataDropTableQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'dropToken',
		'tableToken',
		'table'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataDropTableQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropTableQuery: self
]

{ #category : #generated }
TeradataDropTableQueryNode >> dropToken [
	^ dropToken
]

{ #category : #generated }
TeradataDropTableQueryNode >> dropToken: aSmaCCToken [
	dropToken := aSmaCCToken
]

{ #category : #generated }
TeradataDropTableQueryNode >> nodeVariables [
	^ #(#table)
]

{ #category : #generated }
TeradataDropTableQueryNode >> table [
	^ table
]

{ #category : #generated }
TeradataDropTableQueryNode >> table: aTeradataTableNode [
	self table notNil ifTrue: [ self table parent: nil ].
	table := aTeradataTableNode.
	self table notNil ifTrue: [ self table parent: self ]
]

{ #category : #generated }
TeradataDropTableQueryNode >> tableToken [
	^ tableToken
]

{ #category : #generated }
TeradataDropTableQueryNode >> tableToken: aSmaCCToken [
	tableToken := aSmaCCToken
]

{ #category : #generated }
TeradataDropTableQueryNode >> tokenVariables [
	^ #(#dropToken #tableToken)
]
