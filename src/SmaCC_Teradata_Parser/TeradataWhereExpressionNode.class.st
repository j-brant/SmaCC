Class {
	#name : #TeradataWhereExpressionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'whereToken',
		'where'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataWhereExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhereExpression: self
]

{ #category : #generated }
TeradataWhereExpressionNode >> nodeVariables [
	^ #(#where)
]

{ #category : #generated }
TeradataWhereExpressionNode >> tokenVariables [
	^ #(#whereToken)
]

{ #category : #generated }
TeradataWhereExpressionNode >> where [
	^ where
]

{ #category : #generated }
TeradataWhereExpressionNode >> where: aTeradataExpressionNode [
	self where notNil ifTrue: [ self where parent: nil ].
	where := aTeradataExpressionNode.
	self where notNil ifTrue: [ self where parent: self ]
]

{ #category : #generated }
TeradataWhereExpressionNode >> whereToken [
	^ whereToken
]

{ #category : #generated }
TeradataWhereExpressionNode >> whereToken: aSmaCCToken [
	whereToken := aSmaCCToken
]
