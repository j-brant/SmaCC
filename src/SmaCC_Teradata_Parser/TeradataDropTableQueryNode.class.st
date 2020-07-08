Class {
	#name : #TeradataDropTableQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'dropToken',
		'tableToken',
		'tableName'
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
TeradataDropTableQueryNode >> tableName [
	^ tableName
]

{ #category : #generated }
TeradataDropTableQueryNode >> tableName: aSmaCCToken [
	tableName := aSmaCCToken
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
	^ #(#dropToken #tableToken #tableName)
]
