Class {
	#name : #CPPConversionFunctionIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'operatorToken',
		'type'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConversionFunctionIdentifier: self
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> operatorToken [
	^ operatorToken
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> operatorToken: aSmaCCToken [
	operatorToken := aSmaCCToken
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> otherVariables [
	^ #(#type)
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> tokenVariables [
	^ #(#operatorToken)
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> type [
	^ type
]

{ #category : #generated }
CPPConversionFunctionIdentifierNode >> type: anOrderedCollection [
	type := anOrderedCollection
]
