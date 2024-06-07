Class {
	#name : #PyStatementNode,
	#superclass : #PyRootNode,
	#instVars : [
		'semicolonToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitStatement: self
]

{ #category : #generated }
PyStatementNode >> semicolonToken [
	^ semicolonToken
]

{ #category : #generated }
PyStatementNode >> semicolonToken: aSmaCCToken [
	semicolonToken := aSmaCCToken
]

{ #category : #generated }
PyStatementNode >> tokenVariables [
	^ #(#semicolonToken)
]
