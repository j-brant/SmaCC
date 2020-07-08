Class {
	#name : #TeradataDatabaseStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'databaseToken',
		'database'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataDatabaseStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDatabaseStatement: self
]

{ #category : #generated }
TeradataDatabaseStatementNode >> database [
	^ database
]

{ #category : #generated }
TeradataDatabaseStatementNode >> database: aSmaCCToken [
	database := aSmaCCToken
]

{ #category : #generated }
TeradataDatabaseStatementNode >> databaseToken [
	^ databaseToken
]

{ #category : #generated }
TeradataDatabaseStatementNode >> databaseToken: aSmaCCToken [
	databaseToken := aSmaCCToken
]

{ #category : #generated }
TeradataDatabaseStatementNode >> tokenVariables [
	^ #(#databaseToken #database)
]
