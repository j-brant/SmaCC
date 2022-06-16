Class {
	#name : #PyStringNode,
	#superclass : #PyRootNode,
	#instVars : [
		'value'
	],
	#category : 'SmaCC_Python'
}

{ #category : #generated }
PyStringNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitString: self
]

{ #category : #generated }
PyStringNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
PyStringNode >> value [
	^ value
]

{ #category : #generated }
PyStringNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
