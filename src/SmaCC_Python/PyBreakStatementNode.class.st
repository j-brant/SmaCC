Class {
	#name : #PyBreakStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'breakToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyBreakStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitBreakStatement: self
]

{ #category : #generated }
PyBreakStatementNode >> breakToken [
	^ breakToken
]

{ #category : #generated }
PyBreakStatementNode >> breakToken: aSmaCCToken [
	breakToken := aSmaCCToken
]

{ #category : #generated }
PyBreakStatementNode >> tokenVariables [
	^ #(#breakToken #semicolonToken)
]
