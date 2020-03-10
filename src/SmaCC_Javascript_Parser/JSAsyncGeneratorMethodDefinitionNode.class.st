Class {
	#name : #JSAsyncGeneratorMethodDefinitionNode,
	#superclass : #JSGeneratorMethodDefinitionNode,
	#instVars : [
		'asyncToken'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAsyncGeneratorMethodDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAsyncGeneratorMethodDefinition: self
]

{ #category : #generated }
JSAsyncGeneratorMethodDefinitionNode >> asyncToken [
	^ asyncToken
]

{ #category : #generated }
JSAsyncGeneratorMethodDefinitionNode >> asyncToken: aSmaCCToken [
	asyncToken := aSmaCCToken
]

{ #category : #generated }
JSAsyncGeneratorMethodDefinitionNode >> tokenVariables [
	^ #(#asyncToken #star #staticToken)
]
