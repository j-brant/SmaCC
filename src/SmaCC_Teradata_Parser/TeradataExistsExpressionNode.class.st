Class {
	#name : #TeradataExistsExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'existsToken',
		'query',
		'notToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataExistsExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExistsExpression: self
]

{ #category : #generated }
TeradataExistsExpressionNode >> existsToken [
	^ existsToken
]

{ #category : #generated }
TeradataExistsExpressionNode >> existsToken: aSmaCCToken [
	existsToken := aSmaCCToken
]

{ #category : #generated }
TeradataExistsExpressionNode >> nodeVariables [
	^ #(#query)
]

{ #category : #generated }
TeradataExistsExpressionNode >> notToken [
	^ notToken
]

{ #category : #generated }
TeradataExistsExpressionNode >> notToken: aSmaCCToken [
	notToken := aSmaCCToken
]

{ #category : #generated }
TeradataExistsExpressionNode >> query [
	^ query
]

{ #category : #generated }
TeradataExistsExpressionNode >> query: aTeradataProgramNode [
	self query notNil ifTrue: [ self query parent: nil ].
	query := aTeradataProgramNode.
	self query notNil ifTrue: [ self query parent: self ]
]

{ #category : #generated }
TeradataExistsExpressionNode >> tokenVariables [
	^ #(#existsToken #notToken)
]
