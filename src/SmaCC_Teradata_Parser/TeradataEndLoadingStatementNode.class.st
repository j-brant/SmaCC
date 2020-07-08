Class {
	#name : #TeradataEndLoadingStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'endToken',
		'loadingToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataEndLoadingStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEndLoadingStatement: self
]

{ #category : #generated }
TeradataEndLoadingStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
TeradataEndLoadingStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
TeradataEndLoadingStatementNode >> loadingToken [
	^ loadingToken
]

{ #category : #generated }
TeradataEndLoadingStatementNode >> loadingToken: aSmaCCToken [
	loadingToken := aSmaCCToken
]

{ #category : #generated }
TeradataEndLoadingStatementNode >> tokenVariables [
	^ #(#endToken #loadingToken)
]
