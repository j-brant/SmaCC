Class {
	#name : #TeradataCountExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'countToken',
		'value',
		'countType'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCountExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCountExpression: self
]

{ #category : #generated }
TeradataCountExpressionNode >> countToken [
	^ countToken
]

{ #category : #generated }
TeradataCountExpressionNode >> countToken: aSmaCCToken [
	countToken := aSmaCCToken
]

{ #category : #generated }
TeradataCountExpressionNode >> countType [
	^ countType
]

{ #category : #generated }
TeradataCountExpressionNode >> countType: aSmaCCToken [
	countType := aSmaCCToken
]

{ #category : #generated }
TeradataCountExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataCountExpressionNode >> tokenVariables [
	^ #(#countToken #countType)
]

{ #category : #generated }
TeradataCountExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataCountExpressionNode >> value: aTeradataExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
