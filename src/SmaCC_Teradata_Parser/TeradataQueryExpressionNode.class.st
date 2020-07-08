Class {
	#name : #TeradataQueryExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'query'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataQueryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQueryExpression: self
]

{ #category : #generated }
TeradataQueryExpressionNode >> nodeVariables [
	^ #(#query)
]

{ #category : #generated }
TeradataQueryExpressionNode >> query [
	^ query
]

{ #category : #generated }
TeradataQueryExpressionNode >> query: aTeradataProgramNode [
	self query notNil
		ifTrue: [ self query parent: nil ].
	query := aTeradataProgramNode.
	self query notNil
		ifTrue: [ self query parent: self ]
]
