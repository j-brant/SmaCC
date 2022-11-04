Class {
	#name : #GraphQLSchemaExtensionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'extendToken',
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
GraphQLSchemaExtensionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSchemaExtension: self
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> colonTokens [
	^ colonTokens
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> colonTokens: anOrderedCollection [
	colonTokens := anOrderedCollection
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> compositeNodeVariables [
	^ #(#types #directives)
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> compositeTokenVariables [
	^ #(#operationTypes #colonTokens)
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> extendToken [
	^ extendToken
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> extendToken: aSmaCCToken [
	extendToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLSchemaExtensionNode >> initialize [
	super initialize.
	operationTypes := OrderedCollection new: 2.
	colonTokens := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> operationTypes [
	^ operationTypes
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> operationTypes: anOrderedCollection [
	operationTypes := anOrderedCollection
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> schemaToken [
	^ schemaToken
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> schemaToken: aSmaCCToken [
	schemaToken := aSmaCCToken
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> tokenVariables [
	^ #(#extendToken #schemaToken #leftBrace #rightBrace)
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> types [
	^ types
]

{ #category : #generated }
GraphQLSchemaExtensionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
