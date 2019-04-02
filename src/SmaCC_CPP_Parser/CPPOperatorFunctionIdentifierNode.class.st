Class {
	#name : #CPPOperatorFunctionIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'operatorToken',
		'name'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOperatorFunctionIdentifier: self
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> name [
	^ name
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> operatorToken [
	^ operatorToken
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> operatorToken: aSmaCCToken [
	operatorToken := aSmaCCToken
]

{ #category : #generated }
CPPOperatorFunctionIdentifierNode >> tokenVariables [
	^ #(#operatorToken #name)
]
