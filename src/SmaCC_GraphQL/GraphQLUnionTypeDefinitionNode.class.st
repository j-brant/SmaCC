Class {
	#name : #GraphQLUnionTypeDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'unionToken',
		'name',
		'equalToken',
		'types',
		'barTokens',
		'directives',
		'description'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnionTypeDefinition: self
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> barTokens [
	^ barTokens
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> barTokens: anOrderedCollection [
	barTokens := anOrderedCollection
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> compositeNodeVariables [
	^ #(#types #directives)
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> compositeTokenVariables [
	^ #(#barTokens)
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> description [
	^ description
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> description: aSmaCCToken [
	description := aSmaCCToken
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLUnionTypeDefinitionNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	barTokens := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> tokenVariables [
	^ #(#unionToken #name #equalToken #description)
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> types [
	^ types
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> unionToken [
	^ unionToken
]

{ #category : #generated }
GraphQLUnionTypeDefinitionNode >> unionToken: aSmaCCToken [
	unionToken := aSmaCCToken
]
