Class {
	#name : #CPPNumericLiteralNode,
	#superclass : #CPPLiteralNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPNumericLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNumericLiteral: self
]

{ #category : #generated }
CPPNumericLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
CPPNumericLiteralNode >> value [
	^ value
]

{ #category : #generated }
CPPNumericLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
