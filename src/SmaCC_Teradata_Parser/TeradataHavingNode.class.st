Class {
	#name : #TeradataHavingNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'havingToken',
		'condition'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataHavingNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitHaving: self
]

{ #category : #generated }
TeradataHavingNode >> condition [
	^ condition
]

{ #category : #generated }
TeradataHavingNode >> condition: aTeradataExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aTeradataExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
TeradataHavingNode >> havingToken [
	^ havingToken
]

{ #category : #generated }
TeradataHavingNode >> havingToken: aSmaCCToken [
	havingToken := aSmaCCToken
]

{ #category : #generated }
TeradataHavingNode >> nodeVariables [
	^ #(#condition)
]

{ #category : #generated }
TeradataHavingNode >> tokenVariables [
	^ #(#havingToken)
]
