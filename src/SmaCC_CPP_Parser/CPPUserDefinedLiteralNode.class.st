Class {
	#name : #CPPUserDefinedLiteralNode,
	#superclass : #CPPLiteralNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPUserDefinedLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUserDefinedLiteral: self
]

{ #category : #generated }
CPPUserDefinedLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
CPPUserDefinedLiteralNode >> value [
	^ value
]

{ #category : #generated }
CPPUserDefinedLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
