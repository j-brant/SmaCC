Class {
	#name : #TeradataUnicodeEscapeExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'uescapeToken',
		'escape'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataUnicodeEscapeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnicodeEscapeExpression: self
]

{ #category : #generated }
TeradataUnicodeEscapeExpressionNode >> escape [
	^ escape
]

{ #category : #generated }
TeradataUnicodeEscapeExpressionNode >> escape: aSmaCCToken [
	escape := aSmaCCToken
]

{ #category : #generated }
TeradataUnicodeEscapeExpressionNode >> tokenVariables [
	^ #(#value #uescapeToken #escape)
]

{ #category : #generated }
TeradataUnicodeEscapeExpressionNode >> uescapeToken [
	^ uescapeToken
]

{ #category : #generated }
TeradataUnicodeEscapeExpressionNode >> uescapeToken: aSmaCCToken [
	uescapeToken := aSmaCCToken
]

{ #category : #generated }
TeradataUnicodeEscapeExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataUnicodeEscapeExpressionNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
