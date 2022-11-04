Class {
	#name : #GraphQLVariableNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'dollarToken',
		'name'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLVariableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariable: self
]

{ #category : #generated }
GraphQLVariableNode >> dollarToken [
	^ dollarToken
]

{ #category : #generated }
GraphQLVariableNode >> dollarToken: aSmaCCToken [
	dollarToken := aSmaCCToken
]

{ #category : #generated }
GraphQLVariableNode >> name [
	^ name
]

{ #category : #generated }
GraphQLVariableNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLVariableNode >> tokenVariables [
	^ #(#dollarToken #name)
]
