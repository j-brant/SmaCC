Class {
	#name : #PyPassStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'passToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyPassStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitPassStatement: self
]

{ #category : #generated }
PyPassStatementNode >> passToken [
	^ passToken
]

{ #category : #generated }
PyPassStatementNode >> passToken: aSmaCCToken [
	passToken := aSmaCCToken
]

{ #category : #generated }
PyPassStatementNode >> tokenVariables [
	^ #(#passToken #semicolonToken)
]
