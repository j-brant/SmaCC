Class {
	#name : #CPPPrimitiveTypeNode,
	#superclass : #CPPTypeNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPPrimitiveTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPrimitiveType: self
]

{ #category : #generated }
CPPPrimitiveTypeNode >> name [
	^ name
]

{ #category : #generated }
CPPPrimitiveTypeNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPPrimitiveTypeNode >> tokenVariables [
	^ #(#name)
]
