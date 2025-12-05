Class {
	#name : 'JSAsyncFunctionNode',
	#superclass : 'JSFunctionNode',
	#instVars : [
		'asyncToken'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSAsyncFunctionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAsyncFunction: self
]

{ #category : 'generated' }
JSAsyncFunctionNode >> asyncToken [
	^ asyncToken
]

{ #category : 'generated' }
JSAsyncFunctionNode >> asyncToken: aSmaCCToken [
	asyncToken := aSmaCCToken
]

{ #category : 'generated' }
JSAsyncFunctionNode >> tokenVariables [
	^ #(#asyncToken #functionToken)
]
