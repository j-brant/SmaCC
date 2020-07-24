Class {
	#name : #TeradataIgnoreNullsExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'ignoreToken',
		'nullsToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataIgnoreNullsExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIgnoreNullsExpression: self
]

{ #category : #generated }
TeradataIgnoreNullsExpressionNode >> ignoreToken [
	^ ignoreToken
]

{ #category : #generated }
TeradataIgnoreNullsExpressionNode >> ignoreToken: aSmaCCToken [
	ignoreToken := aSmaCCToken
]

{ #category : #generated }
TeradataIgnoreNullsExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
TeradataIgnoreNullsExpressionNode >> nullsToken [
	^ nullsToken
]

{ #category : #generated }
TeradataIgnoreNullsExpressionNode >> nullsToken: aSmaCCToken [
	nullsToken := aSmaCCToken
]

{ #category : #generated }
TeradataIgnoreNullsExpressionNode >> tokenVariables [
	^ #(#ignoreToken #nullsToken)
]

{ #category : #generated }
TeradataIgnoreNullsExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataIgnoreNullsExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
