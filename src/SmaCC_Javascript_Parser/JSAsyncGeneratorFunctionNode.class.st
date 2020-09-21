Class {
	#name : #JSAsyncGeneratorFunctionNode,
	#superclass : #JSGeneratorFunctionNode,
	#instVars : [
		'asyncToken'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAsyncGeneratorFunctionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAsyncGeneratorFunction: self
]

{ #category : #generated }
JSAsyncGeneratorFunctionNode >> asyncToken [
	^ asyncToken
]

{ #category : #generated }
JSAsyncGeneratorFunctionNode >> asyncToken: aSmaCCToken [
	asyncToken := aSmaCCToken
]

{ #category : #generated }
JSAsyncGeneratorFunctionNode >> tokenVariables [
	^ #(#asyncToken #star #functionToken)
]
