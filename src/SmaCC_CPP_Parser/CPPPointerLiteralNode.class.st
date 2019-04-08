Class {
	#name : #CPPPointerLiteralNode,
	#superclass : #CPPLiteralNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPPointerLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPointerLiteral: self
]

{ #category : #generated }
CPPPointerLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
CPPPointerLiteralNode >> value [
	^ value
]

{ #category : #generated }
CPPPointerLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
