Class {
	#name : #GraphQLOperationDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'type',
		'leftBrace',
		'selections',
		'rightBrace',
		'directives',
		'leftParen',
		'variableDefinitions',
		'rightParen',
		'name'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLOperationDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOperationDefinition: self
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> compositeNodeVariables [
	^ #(#selections #directives #variableDefinitions)
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #'generated-initialize-release' }
GraphQLOperationDefinitionNode >> initialize [
	super initialize.
	selections := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
	variableDefinitions := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> selections [
	^ selections
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> selections: anOrderedCollection [
	self setParents: self selections to: nil.
	selections := anOrderedCollection.
	self setParents: self selections to: self
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> tokenVariables [
	^ #(#type #leftBrace #rightBrace #leftParen #rightParen #name)
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> type [
	^ type
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> type: aSmaCCToken [
	type := aSmaCCToken
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> variableDefinitions [
	^ variableDefinitions
]

{ #category : #generated }
GraphQLOperationDefinitionNode >> variableDefinitions: anOrderedCollection [
	self setParents: self variableDefinitions to: nil.
	variableDefinitions := anOrderedCollection.
	self setParents: self variableDefinitions to: self
]
