Class {
	#name : #GraphQLEnumTypeDefinitionNode,
	#superclass : #GraphQLTypeDefinitionNode,
	#instVars : [
		'enumToken',
		'leftBrace',
		'definitions',
		'rightBrace'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnumTypeDefinition: self
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> compositeNodeVariables [
	^ #(#definitions #directives)
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> definitions [
	^ definitions
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> enumToken [
	^ enumToken
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> enumToken: aSmaCCToken [
	enumToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLEnumTypeDefinitionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> tokenVariables [
	^ #(#enumToken #leftBrace #rightBrace #name #description)
]
