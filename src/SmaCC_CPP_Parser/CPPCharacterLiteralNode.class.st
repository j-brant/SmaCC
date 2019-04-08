Class {
	#name : #CPPCharacterLiteralNode,
	#superclass : #CPPLiteralNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPCharacterLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCharacterLiteral: self
]

{ #category : #generated }
CPPCharacterLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
CPPCharacterLiteralNode >> value [
	^ value
]

{ #category : #generated }
CPPCharacterLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
