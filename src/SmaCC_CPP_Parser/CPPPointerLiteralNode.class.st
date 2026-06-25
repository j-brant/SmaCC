Class {
	#name : 'CPPPointerLiteralNode',
	#superclass : 'CPPLiteralNode',
	#instVars : [
		'value'
	],
	#category : 'SmaCC_CPP_Parser-C++ AST',
	#package : 'SmaCC_CPP_Parser',
	#tag : 'C++ AST'
}

{ #category : 'generated' }
CPPPointerLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPointerLiteral: self
]

{ #category : 'generated' }
CPPPointerLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : 'generated' }
CPPPointerLiteralNode >> value [
	^ value
]

{ #category : 'generated' }
CPPPointerLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
