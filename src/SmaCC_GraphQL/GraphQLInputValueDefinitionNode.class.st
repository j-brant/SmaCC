Class {
	#name : #GraphQLInputValueDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'name',
		'colonToken',
		'type',
		'directives',
		'equalToken',
		'value',
		'description'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLInputValueDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInputValueDefinition: self
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> compositeNodeVariables [
	^ #(#directives)
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> description [
	^ description
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> description: aSmaCCToken [
	description := aSmaCCToken
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLInputValueDefinitionNode >> initialize [
	super initialize.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> nodeVariables [
	^ #(#type #value)
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> tokenVariables [
	^ #(#name #colonToken #equalToken #description)
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> type [
	^ type
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> type: aGraphQLTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aGraphQLTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> value [
	^ value
]

{ #category : #generated }
GraphQLInputValueDefinitionNode >> value: aGraphQLProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aGraphQLProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]
