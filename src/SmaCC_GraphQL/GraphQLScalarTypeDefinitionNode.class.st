Class {
	#name : #GraphQLScalarTypeDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'scalarToken',
		'name',
		'directives',
		'description'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScalarTypeDefinition: self
]

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> compositeNodeVariables [
	^ #(#directives)
]

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> description [
	^ description
]

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> description: aSmaCCToken [
	description := aSmaCCToken
]

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #'generated-initialize-release' }
GraphQLScalarTypeDefinitionNode >> initialize [
	super initialize.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLScalarTypeDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
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
