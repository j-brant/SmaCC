Class {
	#name : #CPPBooleanLiteralNode,
	#superclass : #CPPLiteralNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPBooleanLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBooleanLiteral: self
]

{ #category : #generated }
CPPBooleanLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
CPPBooleanLiteralNode >> value [
	^ value
]

{ #category : #generated }
CPPBooleanLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
