Class {
	#name : #JSONLiteralNode,
	#superclass : #JSONParseNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
JSONLiteralNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitLiteral: self
]

{ #category : #generated }
JSONLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
JSONLiteralNode >> value [
	^ value
]

{ #category : #generated }
JSONLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
