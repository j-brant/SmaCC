Class {
	#name : #GraphQLInputObjectTypeDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'inputToken',
		'name',
		'leftBrace',
		'definitions',
		'rightBrace',
		'directives',
		'description'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInputObjectTypeDefinition: self
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> compositeNodeVariables [
	^ #(#definitions #directives)
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> definitions [
	^ definitions
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> description [
	^ description
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> description: aSmaCCToken [
	description := aSmaCCToken
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #'generated-initialize-release' }
GraphQLInputObjectTypeDefinitionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> inputToken [
	^ inputToken
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> inputToken: aSmaCCToken [
	inputToken := aSmaCCToken
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> tokenVariables [
	^ #(#inputToken #name #leftBrace #rightBrace #description)
]
