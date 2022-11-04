Class {
	#name : #GraphQLEnumTypeExtensionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'extendToken',
		'enumToken',
		'name',
		'leftBrace',
		'definitions',
		'rightBrace',
		'directives'
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
GraphQLEnumTypeExtensionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> enumToken [
	^ enumToken
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> enumToken: aSmaCCToken [
	enumToken := aSmaCCToken
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> extendToken [
	^ extendToken
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> extendToken: aSmaCCToken [
	extendToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLEnumTypeExtensionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
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
GraphQLEnumTypeExtensionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLEnumTypeExtensionNode >> name: aSmaCCToken [
	name := aSmaCCToken
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
	^ #(#extendToken #enumToken #name #leftBrace #rightBrace)
]
