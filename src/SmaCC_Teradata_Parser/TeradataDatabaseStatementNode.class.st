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
TeradataDatabaseStatementNode >> database: aTeradataIdentifierNameNode [
	self database notNil ifTrue: [ self database parent: nil ].
	database := aTeradataIdentifierNameNode.
	self database notNil ifTrue: [ self database parent: self ]
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
TeradataDatabaseStatementNode >> nodeVariables [
	^ #(#database)
]

{ #category : #generated }
TeradataDatabaseStatementNode >> tokenVariables [
	^ #(#databaseToken)
]
