Class {
	#name : #GraphQLInterfaceTypeDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'interfaceToken',
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
GraphQLInterfaceTypeDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInterfaceTypeDefinition: self
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> ampTokens [
	^ ampTokens
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> ampTokens: anOrderedCollection [
	ampTokens := anOrderedCollection
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> compositeNodeVariables [
	^ #(#definitions #directives #types)
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> compositeTokenVariables [
	^ #(#ampTokens)
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> definitions [
	^ definitions
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> description [
	^ description
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> description: aSmaCCToken [
	description := aSmaCCToken
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLInterfaceTypeDefinitionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	ampTokens := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> interfaceToken [
	^ interfaceToken
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> interfaceToken: aSmaCCToken [
	interfaceToken := aSmaCCToken
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> tokenVariables [
	^ #(#interfaceToken #name #leftBrace #rightBrace #implementsToken #description)
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> types [
	^ types
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
