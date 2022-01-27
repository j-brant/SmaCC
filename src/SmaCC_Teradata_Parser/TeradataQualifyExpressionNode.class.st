Class {
	#name : #TeradataQualifyExpressionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'qualifyToken',
		'condition'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataQualifyExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQualifyExpression: self
]

{ #category : #generated }
TeradataQualifyExpressionNode >> condition [
	^ condition
]

{ #category : #generated }
TeradataQualifyExpressionNode >> condition: aTeradataExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aTeradataExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
TeradataQualifyExpressionNode >> nodeVariables [
	^ #(#condition)
]

{ #category : #generated }
TeradataQualifyExpressionNode >> qualifyToken [
	^ qualifyToken
]

{ #category : #generated }
TeradataQualifyExpressionNode >> qualifyToken: aSmaCCToken [
	qualifyToken := aSmaCCToken
]

{ #category : #generated }
TeradataQualifyExpressionNode >> tokenVariables [
	^ #(#qualifyToken)
]
