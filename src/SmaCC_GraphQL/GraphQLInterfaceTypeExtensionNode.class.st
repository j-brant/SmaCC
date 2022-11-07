Class {
	#name : #GraphQLInterfaceTypeExtensionNode,
	#superclass : #GraphQLTypeExtensionNode,
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
GraphQLInterfaceTypeExtensionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInterfaceTypeExtension: self
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> ampTokens [
	^ ampTokens
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> ampTokens: anOrderedCollection [
	ampTokens := anOrderedCollection
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> compositeNodeVariables [
	^ #(#definitions #types #directives)
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> compositeTokenVariables [
	^ #(#ampTokens)
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> definitions [
	^ definitions
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLInterfaceTypeExtensionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	ampTokens := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> interfaceToken [
	^ interfaceToken
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> interfaceToken: aSmaCCToken [
	interfaceToken := aSmaCCToken
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> tokenVariables [
	^ #(#interfaceToken #leftBrace #rightBrace #implementsToken #extendToken #name)
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> types [
	^ types
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
