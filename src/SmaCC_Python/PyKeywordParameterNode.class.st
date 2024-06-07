Class {
	#name : #PyKeywordParameterNode,
	#superclass : #PyParameterNode,
	#instVars : [
		'starStarToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyKeywordParameterNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitKeywordParameter: self
]

{ #category : #generated }
PyKeywordParameterNode >> starStarToken [
	^ starStarToken
]

{ #category : #generated }
PyKeywordParameterNode >> starStarToken: aSmaCCToken [
	starStarToken := aSmaCCToken
]

{ #category : #generated }
PyKeywordParameterNode >> tokenVariables [
	^ #(#starStarToken #colonToken)
]
