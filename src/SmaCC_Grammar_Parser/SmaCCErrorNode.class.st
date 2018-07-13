Class {
	#name : #SmaCCErrorNode,
	#superclass : #SmaCCDefinitionNode,
	#instVars : [
		'_error',
		'semicolon'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #generated }
SmaCCErrorNode >> _error [
	^ _error
]

{ #category : #generated }
SmaCCErrorNode >> _error: aSmaCCToken [
	_error := aSmaCCToken
]

{ #category : #generated }
SmaCCErrorNode >> acceptVisitor: aDefinitionVisitor [
	^ aDefinitionVisitor visitError: self
]

{ #category : #generated }
SmaCCErrorNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
SmaCCErrorNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
SmaCCErrorNode >> tokenVariables [
	^ #(#_error #semicolon)
]
