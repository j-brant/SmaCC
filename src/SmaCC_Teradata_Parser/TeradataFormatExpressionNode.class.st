Class {
	#name : #TeradataFormatExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'formatToken',
		'format'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataFormatExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFormatExpression: self
]

{ #category : #generated }
TeradataFormatExpressionNode >> format [
	^ format
]

{ #category : #generated }
TeradataFormatExpressionNode >> format: aSmaCCToken [
	format := aSmaCCToken
]

{ #category : #generated }
TeradataFormatExpressionNode >> formatToken [
	^ formatToken
]

{ #category : #generated }
TeradataFormatExpressionNode >> formatToken: aSmaCCToken [
	formatToken := aSmaCCToken
]

{ #category : #generated }
TeradataFormatExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataFormatExpressionNode >> tokenVariables [
	^ #(#formatToken #format)
]

{ #category : #generated }
TeradataFormatExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataFormatExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
