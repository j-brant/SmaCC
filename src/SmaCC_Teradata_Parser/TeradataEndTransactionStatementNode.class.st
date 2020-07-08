Class {
	#name : #TeradataEndTransactionStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'endToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataEndTransactionStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEndTransactionStatement: self
]

{ #category : #generated }
TeradataEndTransactionStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
TeradataEndTransactionStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
TeradataEndTransactionStatementNode >> tokenVariables [
	^ #(#endToken)
]
