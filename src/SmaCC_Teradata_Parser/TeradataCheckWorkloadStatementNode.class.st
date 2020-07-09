Class {
	#name : #TeradataCheckWorkloadStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'checkToken',
		'workloadToken',
		'forToken',
		'statement',
		'endToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCheckWorkloadStatement: self
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> checkToken [
	^ checkToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> checkToken: aSmaCCToken [
	checkToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> forToken [
	^ forToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> nodeVariables [
	^ #(#statement)
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> statement [
	^ statement
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> statement: aTeradataProgramNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aTeradataProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> tokenVariables [
	^ #(#checkToken #workloadToken #forToken #endToken)
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> workloadToken [
	^ workloadToken
]

{ #category : #generated }
TeradataCheckWorkloadStatementNode >> workloadToken: aSmaCCToken [
	workloadToken := aSmaCCToken
]
