Class {
	#name : #CPPLiteralFunctionIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'operatorToken',
		'string',
		'name'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPLiteralFunctionIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLiteralFunctionIdentifier: self
]

{ #category : #generated }
CPPLiteralFunctionIdentifierNode >> name [
	^ name
]

{ #category : #generated }
CPPLiteralFunctionIdentifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPLiteralFunctionIdentifierNode >> operatorToken [
	^ operatorToken
]

{ #category : #generated }
CPPLiteralFunctionIdentifierNode >> operatorToken: aSmaCCToken [
	operatorToken := aSmaCCToken
]

{ #category : #generated }
CPPLiteralFunctionIdentifierNode >> string [
	^ string
]

{ #category : #generated }
CPPLiteralFunctionIdentifierNode >> string: aSmaCCToken [
	string := aSmaCCToken
]

{ #category : #generated }
CPPLiteralFunctionIdentifierNode >> tokenVariables [
	^ #(#operatorToken #string #name)
]
