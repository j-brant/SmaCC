Class {
	#name : #GraphQLDirectiveDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'directiveToken',
		'atToken',
		'name',
		'onToken',
		'locations',
		'barTokens',
		'repeatableToken',
		'leftParen',
		'definitions',
		'rightParen',
		'description'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDirectiveDefinition: self
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> atToken [
	^ atToken
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> atToken: aSmaCCToken [
	atToken := aSmaCCToken
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> barTokens [
	^ barTokens
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> barTokens: anOrderedCollection [
	barTokens := anOrderedCollection
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> compositeNodeVariables [
	^ #(#definitions)
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> compositeTokenVariables [
	^ #(#locations #barTokens)
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> definitions [
	^ definitions
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> description [
	^ description
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> description: aSmaCCToken [
	description := aSmaCCToken
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> directiveToken [
	^ directiveToken
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> directiveToken: aSmaCCToken [
	directiveToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLDirectiveDefinitionNode >> initialize [
	super initialize.
	locations := OrderedCollection new: 2.
	barTokens := OrderedCollection new: 2.
	definitions := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> locations [
	^ locations
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> locations: anOrderedCollection [
	locations := anOrderedCollection
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> onToken [
	^ onToken
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> onToken: aSmaCCToken [
	onToken := aSmaCCToken
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> repeatableToken [
	^ repeatableToken
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> repeatableToken: aSmaCCToken [
	repeatableToken := aSmaCCToken
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
GraphQLDirectiveDefinitionNode >> tokenVariables [
	^ #(#directiveToken #atToken #name #onToken #repeatableToken #leftParen #rightParen #description)
]
