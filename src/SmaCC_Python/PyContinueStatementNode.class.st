Class {
	#name : #PyContinueStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'continueToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyContinueStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitContinueStatement: self
]

{ #category : #generated }
PyContinueStatementNode >> continueToken [
	^ continueToken
]

{ #category : #generated }
PyContinueStatementNode >> continueToken: aSmaCCToken [
	continueToken := aSmaCCToken
]

{ #category : #generated }
PyContinueStatementNode >> tokenVariables [
	^ #(#continueToken #semicolonToken)
]
