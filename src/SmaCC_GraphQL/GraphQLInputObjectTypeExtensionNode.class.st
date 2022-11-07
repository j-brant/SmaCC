Class {
	#name : #GraphQLInputObjectTypeExtensionNode,
	#superclass : #GraphQLTypeExtensionNode,
	#instVars : [
		'inputToken',
		'leftBrace',
		'definitions',
		'rightBrace'
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

{ #category : #'generated-initialize-release' }
GraphQLInputObjectTypeExtensionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
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
GraphQLInputObjectTypeExtensionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLInputObjectTypeExtensionNode >> tokenVariables [
	^ #(#inputToken #leftBrace #rightBrace #extendToken #name)
]
