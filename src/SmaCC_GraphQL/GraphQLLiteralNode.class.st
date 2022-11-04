Class {
	#name : #GraphQLLiteralNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'value'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLiteral: self
]

{ #category : #generated }
GraphQLLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
GraphQLLiteralNode >> value [
	^ value
]

{ #category : #generated }
GraphQLLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
