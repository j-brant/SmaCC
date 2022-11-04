Class {
	#name : #GraphQLObjectTypeDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'typeToken',
		'name',
		'leftBrace',
		'definitions',
		'rightBrace',
		'directives',
		'implementsToken',
		'types',
		'ampTokens',
		'description'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitObjectTypeDefinition: self
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> ampTokens [
	^ ampTokens
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> ampTokens: anOrderedCollection [
	ampTokens := anOrderedCollection
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> compositeNodeVariables [
	^ #(#definitions #directives #types)
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> compositeTokenVariables [
	^ #(#ampTokens)
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> definitions [
	^ definitions
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> description [
	^ description
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> description: aSmaCCToken [
	description := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLObjectTypeDefinitionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	ampTokens := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> tokenVariables [
	^ #(#typeToken #name #leftBrace #rightBrace #implementsToken #description)
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> typeToken [
	^ typeToken
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> typeToken: aSmaCCToken [
	typeToken := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> types [
	^ types
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
