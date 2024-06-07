Class {
	#name : #PyAsNameNode,
	#superclass : #PyNameNode,
	#instVars : [
		'asToken',
		'rename'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyAsNameNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitAsName: self
]

{ #category : #generated }
PyAsNameNode >> asToken [
	^ asToken
]

{ #category : #generated }
PyAsNameNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
PyAsNameNode >> rename [
	^ rename
]

{ #category : #generated }
PyAsNameNode >> rename: aSmaCCToken [
	rename := aSmaCCToken
]

{ #category : #generated }
PyAsNameNode >> tokenVariables [
	^ #(#asToken #rename #nameToken)
]
