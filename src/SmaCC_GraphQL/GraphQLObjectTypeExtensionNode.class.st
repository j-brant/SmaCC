Class {
	#name : #GraphQLObjectTypeExtensionNode,
	#superclass : #GraphQLTypeExtensionNode,
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
GraphQLObjectTypeExtensionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitObjectTypeExtension: self
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> ampTokens [
	^ ampTokens
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> ampTokens: anOrderedCollection [
	ampTokens := anOrderedCollection
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> compositeNodeVariables [
	^ #(#definitions #types #directives)
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> compositeTokenVariables [
	^ #(#ampTokens)
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> definitions [
	^ definitions
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLObjectTypeExtensionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	ampTokens := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> tokenVariables [
	^ #(#typeToken #leftBrace #rightBrace #implementsToken #extendToken #name)
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> typeToken [
	^ typeToken
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> typeToken: aSmaCCToken [
	typeToken := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> types [
	^ types
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
