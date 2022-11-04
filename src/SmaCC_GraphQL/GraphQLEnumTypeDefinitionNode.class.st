Class {
	#name : #GraphQLEnumTypeDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'enumToken',
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
GraphQLEnumTypeDefinitionNode >> description [
	^ description
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> description: aSmaCCToken [
	description := aSmaCCToken
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
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
	directives := OrderedCollection new: 2.
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
GraphQLEnumTypeDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLEnumTypeDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
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
	^ #(#enumToken #name #leftBrace #rightBrace #description)
]
