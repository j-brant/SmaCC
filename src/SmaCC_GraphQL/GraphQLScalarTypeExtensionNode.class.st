Class {
	#name : #GraphQLScalarTypeExtensionNode,
	#superclass : #GraphQLTypeExtensionNode,
	#instVars : [
		'scalarToken'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScalarTypeExtension: self
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> scalarToken [
	^ scalarToken
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> scalarToken: aSmaCCToken [
	scalarToken := aSmaCCToken
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> tokenVariables [
	^ #(#scalarToken #extendToken #name)
]
