Class {
	#name : #TeradataExtractExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'extractToken',
		'name',
		'fromToken',
		'value'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataExtractExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExtractExpression: self
]

{ #category : #generated }
TeradataExtractExpressionNode >> extractToken [
	^ extractToken
]

{ #category : #generated }
TeradataExtractExpressionNode >> extractToken: aSmaCCToken [
	extractToken := aSmaCCToken
]

{ #category : #generated }
TeradataExtractExpressionNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
TeradataExtractExpressionNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #generated }
TeradataExtractExpressionNode >> name [
	^ name
]

{ #category : #generated }
TeradataExtractExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataExtractExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataExtractExpressionNode >> tokenVariables [
	^ #(#extractToken #name #fromToken)
]

{ #category : #generated }
TeradataExtractExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataExtractExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
