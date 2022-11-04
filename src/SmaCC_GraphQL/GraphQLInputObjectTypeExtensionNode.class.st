Class {
	#name : #GraphQLInputObjectTypeExtensionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'extendToken',
		'inputToken',
		'name',
		'leftBrace',
		'definitions',
		'rightBrace',
		'directives'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInputObjectTypeExtension: self
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> compositeNodeVariables [
	^ #(#definitions #directives)
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> definitions [
	^ definitions
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> extendToken [
	^ extendToken
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> extendToken: aSmaCCToken [
	extendToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLInputObjectTypeExtensionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> inputToken [
	^ inputToken
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> inputToken: aSmaCCToken [
	inputToken := aSmaCCToken
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> tokenVariables [
	^ #(#extendToken #inputToken #name #leftBrace #rightBrace)
]
