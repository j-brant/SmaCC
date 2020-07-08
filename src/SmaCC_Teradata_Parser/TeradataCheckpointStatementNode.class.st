Class {
	#name : #TeradataCheckpointStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'checkpointToken',
		'loadingToken',
		'intervalToken',
		'interal',
		'endToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCheckpointStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCheckpointStatement: self
]

{ #category : #generated }
TeradataCheckpointStatementNode >> checkpointToken [
	^ checkpointToken
]

{ #category : #generated }
TeradataCheckpointStatementNode >> checkpointToken: aSmaCCToken [
	checkpointToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckpointStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
TeradataCheckpointStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckpointStatementNode >> interal [
	^ interal
]

{ #category : #generated }
TeradataCheckpointStatementNode >> interal: aSmaCCToken [
	interal := aSmaCCToken
]

{ #category : #generated }
TeradataCheckpointStatementNode >> intervalToken [
	^ intervalToken
]

{ #category : #generated }
TeradataCheckpointStatementNode >> intervalToken: aSmaCCToken [
	intervalToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckpointStatementNode >> loadingToken [
	^ loadingToken
]

{ #category : #generated }
TeradataCheckpointStatementNode >> loadingToken: aSmaCCToken [
	loadingToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckpointStatementNode >> tokenVariables [
	^ #(#checkpointToken #loadingToken #intervalToken #interal #endToken)
]
