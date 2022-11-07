Class {
	#name : #GraphQLScalarTypeDefinitionNode,
	#superclass : #GraphQLTypeDefinitionNode,
	#instVars : [
		'scalarToken'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScalarTypeDefinition: self
]

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> scalarToken [
	^ scalarToken
]

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> scalarToken: aSmaCCToken [
	scalarToken := aSmaCCToken
]

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> tokenVariables [
	^ #(#scalarToken #name #description)
]
