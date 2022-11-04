Class {
	#name : #GraphQLNamedTypeNode,
	#superclass : #GraphQLTypeNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLNamedTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNamedType: self
]

{ #category : #generated }
GraphQLNamedTypeNode >> name [
	^ name
]

{ #category : #generated }
GraphQLNamedTypeNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLNamedTypeNode >> tokenVariables [
	^ #(#name #bangToken)
]
