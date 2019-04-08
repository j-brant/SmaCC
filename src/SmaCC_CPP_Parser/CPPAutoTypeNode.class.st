Class {
	#name : #CPPAutoTypeNode,
	#superclass : #CPPTypeNode,
	#instVars : [
		'autoToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAutoTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAutoType: self
]

{ #category : #generated }
CPPAutoTypeNode >> autoToken [
	^ autoToken
]

{ #category : #generated }
CPPAutoTypeNode >> autoToken: aSmaCCToken [
	autoToken := aSmaCCToken
]

{ #category : #generated }
CPPAutoTypeNode >> tokenVariables [
	^ #(#autoToken)
]
