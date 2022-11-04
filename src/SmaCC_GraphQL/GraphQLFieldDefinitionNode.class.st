Class {
	#name : #GraphQLFieldDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'name',
		'colonToken',
		'type',
		'directives',
		'leftParen',
		'definitions',
		'rightParen',
		'description'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLFieldDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFieldDefinition: self
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> compositeNodeVariables [
	^ #(#directives #definitions)
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> definitions [
	^ definitions
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> description [
	^ description
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> description: aSmaCCToken [
	description := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #'generated-initialize-release' }
GraphQLFieldDefinitionNode >> initialize [
	super initialize.
	directives := OrderedCollection new: 2.
	definitions := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> tokenVariables [
	^ #(#name #colonToken #leftParen #rightParen #description)
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> type [
	^ type
]

{ #category : #generated }
GraphQLFieldDefinitionNode >> type: aGraphQLTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aGraphQLTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
