Class {
	#name : #PyNameNode,
	#superclass : #PyRootNode,
	#instVars : [
		'nameToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyNameNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitName: self
]

{ #category : #generated }
PyNameNode >> nameToken [
	^ nameToken
]

{ #category : #generated }
PyNameNode >> nameToken: aSmaCCToken [
	nameToken := aSmaCCToken
]

{ #category : #generated }
PyNameNode >> tokenVariables [
	^ #(#nameToken)
]
