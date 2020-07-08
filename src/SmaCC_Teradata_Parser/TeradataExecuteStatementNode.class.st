Class {
	#name : #TeradataExecuteStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'executeToken',
		'expression'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataExecuteStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExecuteStatement: self
]

{ #category : #generated }
TeradataExecuteStatementNode >> executeToken [
	^ executeToken
]

{ #category : #generated }
TeradataExecuteStatementNode >> executeToken: aSmaCCToken [
	executeToken := aSmaCCToken
]

{ #category : #generated }
TeradataExecuteStatementNode >> expression [
	^ expression
]

{ #category : #generated }
TeradataExecuteStatementNode >> expression: aTeradataExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aTeradataExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
TeradataExecuteStatementNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
TeradataExecuteStatementNode >> tokenVariables [
	^ #(#executeToken)
]
