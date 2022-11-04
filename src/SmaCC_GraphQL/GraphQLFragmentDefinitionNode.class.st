Class {
	#name : #GraphQLFragmentDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'fragmentToken',
		'name',
		'onToken',
		'type',
		'leftBrace',
		'selections',
		'rightBrace',
		'directives'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLFragmentDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFragmentDefinition: self
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> compositeNodeVariables [
	^ #(#selections #directives)
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> fragmentToken [
	^ fragmentToken
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> fragmentToken: aSmaCCToken [
	fragmentToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLFragmentDefinitionNode >> initialize [
	super initialize.
	selections := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> onToken [
	^ onToken
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> onToken: aSmaCCToken [
	onToken := aSmaCCToken
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> selections [
	^ selections
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> selections: anOrderedCollection [
	self setParents: self selections to: nil.
	selections := anOrderedCollection.
	self setParents: self selections to: self
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> tokenVariables [
	^ #(#fragmentToken #name #onToken #leftBrace #rightBrace)
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> type [
	^ type
]

{ #category : #generated }
GraphQLFragmentDefinitionNode >> type: aGraphQLNamedTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aGraphQLNamedTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
