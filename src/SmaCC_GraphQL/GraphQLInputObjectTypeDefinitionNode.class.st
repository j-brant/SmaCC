Class {
	#name : #GraphQLInputObjectTypeDefinitionNode,
	#superclass : #GraphQLTypeDefinitionNode,
	#instVars : [
		'inputToken',
		'leftBrace',
		'definitions',
		'rightBrace'
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

{ #category : #'generated-initialize-release' }
GraphQLInputObjectTypeDefinitionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
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
GraphQLInputObjectTypeDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInputObjectTypeDefinitionNode >> tokenVariables [
	^ #(#inputToken #leftBrace #rightBrace #name #description)
]
