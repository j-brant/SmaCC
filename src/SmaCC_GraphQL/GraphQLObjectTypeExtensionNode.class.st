Class {
	#name : #GraphQLObjectTypeExtensionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'extendToken',
		'typeToken',
		'name',
		'leftBrace',
		'definitions',
		'rightBrace',
		'directives',
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
	^ #(#definitions #directives #types)
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
GraphQLObjectTypeExtensionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> extendToken [
	^ extendToken
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> extendToken: aSmaCCToken [
	extendToken := aSmaCCToken
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
	directives := OrderedCollection new: 2.
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
GraphQLObjectTypeExtensionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLObjectTypeExtensionNode >> name: aSmaCCToken [
	name := aSmaCCToken
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
	^ #(#extendToken #typeToken #name #leftBrace #rightBrace #implementsToken)
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
