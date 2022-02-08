Class {
	#name : #TeradataDistinctExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'distinctToken',
		'value'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataDistinctExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDistinctExpression: self
]

{ #category : #generated }
TeradataDistinctExpressionNode >> distinctToken [
	^ distinctToken
]

{ #category : #generated }
TeradataDistinctExpressionNode >> distinctToken: aSmaCCToken [
	distinctToken := aSmaCCToken
]

{ #category : #generated }
TeradataDistinctExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataDistinctExpressionNode >> tokenVariables [
	^ #(#distinctToken)
]

{ #category : #generated }
TeradataDistinctExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataDistinctExpressionNode >> value: aTeradataExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
