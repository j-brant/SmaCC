Class {
	#name : #GraphQLInterfaceTypeDefinitionNode,
	#superclass : #GraphQLTypeDefinitionNode,
	#instVars : [
		'interfaceToken',
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
	^ #(#definitions #types #directives)
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
GraphQLInterfaceTypeDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInterfaceTypeDefinitionNode >> tokenVariables [
	^ #(#interfaceToken #leftBrace #rightBrace #implementsToken #name #description)
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
