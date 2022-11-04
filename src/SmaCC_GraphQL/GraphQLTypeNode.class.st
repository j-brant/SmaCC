Class {
	#name : #GraphQLTypeNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'bangToken'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitType: self
]

{ #category : #generated }
GraphQLTypeNode >> bangToken [
	^ bangToken
]

{ #category : #generated }
GraphQLTypeNode >> bangToken: aSmaCCToken [
	bangToken := aSmaCCToken
]

{ #category : #generated }
GraphQLTypeNode >> tokenVariables [
	^ #(#bangToken)
]
