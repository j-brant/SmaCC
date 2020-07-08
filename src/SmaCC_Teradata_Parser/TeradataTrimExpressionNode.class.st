Class {
	#name : #TeradataTrimExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'trimToken',
		'positionToken',
		'fromToken',
		'value'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataTrimExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTrimExpression: self
]

{ #category : #generated }
TeradataTrimExpressionNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
TeradataTrimExpressionNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #generated }
TeradataTrimExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataTrimExpressionNode >> positionToken [
	^ positionToken
]

{ #category : #generated }
TeradataTrimExpressionNode >> positionToken: aSmaCCToken [
	positionToken := aSmaCCToken
]

{ #category : #generated }
TeradataTrimExpressionNode >> tokenVariables [
	^ #(#trimToken #positionToken #fromToken)
]

{ #category : #generated }
TeradataTrimExpressionNode >> trimToken [
	^ trimToken
]

{ #category : #generated }
TeradataTrimExpressionNode >> trimToken: aSmaCCToken [
	trimToken := aSmaCCToken
]

{ #category : #generated }
TeradataTrimExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataTrimExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
