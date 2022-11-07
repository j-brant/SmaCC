Class {
	#name : #GraphQLObjectTypeDefinitionNode,
	#superclass : #GraphQLTypeDefinitionNode,
	#instVars : [
		'typeToken',
		'leftBrace',
		'definitions',
		'rightBrace',
		'implementsToken',
		'types',
		'ampTokens'
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
	^ #(#definitions #types #directives)
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
GraphQLObjectTypeDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectTypeDefinitionNode >> tokenVariables [
	^ #(#typeToken #leftBrace #rightBrace #implementsToken #name #description)
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
