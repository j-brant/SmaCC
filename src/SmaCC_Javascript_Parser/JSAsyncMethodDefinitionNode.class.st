Class {
	#name : #JSAsyncMethodDefinitionNode,
	#superclass : #JSMethodDefinitionNode,
	#instVars : [
		'asyncToken'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAsyncMethodDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAsyncMethodDefinition: self
]

{ #category : #generated }
JSAsyncMethodDefinitionNode >> asyncToken [
	^ asyncToken
]

{ #category : #generated }
JSAsyncMethodDefinitionNode >> asyncToken: aSmaCCToken [
	asyncToken := aSmaCCToken
]

{ #category : #generated }
JSAsyncMethodDefinitionNode >> tokenVariables [
	^ #(#asyncToken)
]
