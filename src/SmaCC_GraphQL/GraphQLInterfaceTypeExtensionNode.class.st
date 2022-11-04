Class {
	#name : #GraphQLInterfaceTypeExtensionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'extendToken',
		'interfaceToken',
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
	^ #(#definitions #directives #types)
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
GraphQLInterfaceTypeExtensionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> extendToken [
	^ extendToken
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> extendToken: aSmaCCToken [
	extendToken := aSmaCCToken
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
	directives := OrderedCollection new: 2.
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
GraphQLInterfaceTypeExtensionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLInterfaceTypeExtensionNode >> name: aSmaCCToken [
	name := aSmaCCToken
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
	^ #(#extendToken #interfaceToken #name #leftBrace #rightBrace #implementsToken)
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
