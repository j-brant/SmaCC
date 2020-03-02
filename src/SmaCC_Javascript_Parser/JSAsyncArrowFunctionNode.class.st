Class {
	#name : #JSAsyncArrowFunctionNode,
	#superclass : #JSArrowFunctionNode,
	#instVars : [
		'asyncToken',
		'leftBrace',
		'rightBrace'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAsyncArrowFunctionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAsyncArrowFunction: self
]

{ #category : #generated }
JSAsyncArrowFunctionNode >> asyncToken [
	^ asyncToken
]

{ #category : #generated }
JSAsyncArrowFunctionNode >> asyncToken: aSmaCCToken [
	asyncToken := aSmaCCToken
]

{ #category : #generated }
JSAsyncArrowFunctionNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace #left #right #colonToken #leftBracket #rightBracket)
]

{ #category : #generated }
JSAsyncArrowFunctionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JSAsyncArrowFunctionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JSAsyncArrowFunctionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JSAsyncArrowFunctionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JSAsyncArrowFunctionNode >> tokenVariables [
	^ #(#asyncToken #arrow)
]
