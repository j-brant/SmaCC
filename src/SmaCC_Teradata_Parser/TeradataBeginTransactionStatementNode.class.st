Class {
	#name : #TeradataBeginTransactionStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'beginToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataBeginTransactionStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBeginTransactionStatement: self
]

{ #category : #generated }
TeradataBeginTransactionStatementNode >> beginToken [
	^ beginToken
]

{ #category : #generated }
TeradataBeginTransactionStatementNode >> beginToken: aSmaCCToken [
	beginToken := aSmaCCToken
]

{ #category : #generated }
TeradataBeginTransactionStatementNode >> tokenVariables [
	^ #(#beginToken)
]
