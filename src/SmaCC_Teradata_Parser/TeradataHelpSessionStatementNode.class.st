Class {
	#name : #TeradataHelpSessionStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'helpToken',
		'sessionToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataHelpSessionStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitHelpSessionStatement: self
]

{ #category : #generated }
TeradataHelpSessionStatementNode >> helpToken [
	^ helpToken
]

{ #category : #generated }
TeradataHelpSessionStatementNode >> helpToken: aSmaCCToken [
	helpToken := aSmaCCToken
]

{ #category : #generated }
TeradataHelpSessionStatementNode >> sessionToken [
	^ sessionToken
]

{ #category : #generated }
TeradataHelpSessionStatementNode >> sessionToken: aSmaCCToken [
	sessionToken := aSmaCCToken
]

{ #category : #generated }
TeradataHelpSessionStatementNode >> tokenVariables [
	^ #(#helpToken #sessionToken)
]
