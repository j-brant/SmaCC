Class {
	#name : #CPPCVQualifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'type'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPCVQualifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCVQualifier: self
]

{ #category : #generated }
CPPCVQualifierNode >> tokenVariables [
	^ #(#type)
]

{ #category : #generated }
CPPCVQualifierNode >> type [
	^ type
]

{ #category : #generated }
CPPCVQualifierNode >> type: aSmaCCToken [
	type := aSmaCCToken
]
