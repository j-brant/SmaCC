Class {
	#name : #PyNumberNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'numberToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyNumberNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitNumber: self
]

{ #category : #generated }
PyNumberNode >> numberToken [
	^ numberToken
]

{ #category : #generated }
PyNumberNode >> numberToken: aSmaCCToken [
	numberToken := aSmaCCToken
]

{ #category : #generated }
PyNumberNode >> tokenVariables [
	^ #(#numberToken)
]
