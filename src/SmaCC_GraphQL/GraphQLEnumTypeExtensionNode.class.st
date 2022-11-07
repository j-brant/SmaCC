Class {
	#name : #GraphQLEnumTypeExtensionNode,
	#superclass : #GraphQLTypeExtensionNode,
	#instVars : [
		'enumToken',
		'leftBrace',
		'definitions',
		'rightBrace'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnumTypeExtension: self
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> compositeNodeVariables [
	^ #(#definitions #directives)
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> definitions [
	^ definitions
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> enumToken [
	^ enumToken
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> enumToken: aSmaCCToken [
	enumToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLEnumTypeExtensionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> tokenVariables [
	^ #(#enumToken #leftBrace #rightBrace #extendToken #name)
]
