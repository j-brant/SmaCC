Class {
	#name : #PyNameNode,
	#superclass : #PyRootNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyNameNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitName: self
]

{ #category : #generated }
PyNameNode >> name [
	^ name
]

{ #category : #generated }
PyNameNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
PyNameNode >> tokenVariables [
	^ #(#name)
]
