Class {
	#name : #GraphQLTypeDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'name',
		'directives',
		'description'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLTypeDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeDefinition: self
]

{ #category : #generated }
GraphQLTypeDefinitionNode >> compositeNodeVariables [
	^ #(#directives)
]

{ #category : #generated }
GraphQLTypeDefinitionNode >> description [
	^ description
]

{ #category : #generated }
GraphQLTypeDefinitionNode >> description: aSmaCCToken [
	description := aSmaCCToken
]

{ #category : #generated }
GraphQLTypeDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLTypeDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #'generated-initialize-release' }
GraphQLTypeDefinitionNode >> initialize [
	super initialize.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLTypeDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLTypeDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLTypeDefinitionNode >> tokenVariables [
	^ #(#name #description)
]
