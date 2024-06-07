Class {
	#name : #PyListParameterNode,
	#superclass : #PyParameterNode,
	#instVars : [
		'starToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyListParameterNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitListParameter: self
]

{ #category : #generated }
PyListParameterNode >> starToken [
	^ starToken
]

{ #category : #generated }
PyListParameterNode >> starToken: aSmaCCToken [
	starToken := aSmaCCToken
]

{ #category : #generated }
PyListParameterNode >> tokenVariables [
	^ #(#starToken #colonToken)
]
