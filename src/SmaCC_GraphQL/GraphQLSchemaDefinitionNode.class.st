Class {
	#name : #GraphQLSchemaDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'schemaToken',
		'leftBrace',
		'operationTypes',
		'colonTokens',
		'types',
		'rightBrace',
		'directives'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLSchemaDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSchemaDefinition: self
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> colonTokens [
	^ colonTokens
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> colonTokens: anOrderedCollection [
	colonTokens := anOrderedCollection
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> compositeNodeVariables [
	^ #(#types #directives)
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> compositeTokenVariables [
	^ #(#operationTypes #colonTokens)
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #'generated-initialize-release' }
GraphQLSchemaDefinitionNode >> initialize [
	super initialize.
	operationTypes := OrderedCollection new: 2.
	colonTokens := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> operationTypes [
	^ operationTypes
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> operationTypes: anOrderedCollection [
	operationTypes := anOrderedCollection
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> schemaToken [
	^ schemaToken
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> schemaToken: aSmaCCToken [
	schemaToken := aSmaCCToken
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> tokenVariables [
	^ #(#schemaToken #leftBrace #rightBrace)
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> types [
	^ types
]

{ #category : #generated }
GraphQLSchemaDefinitionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
