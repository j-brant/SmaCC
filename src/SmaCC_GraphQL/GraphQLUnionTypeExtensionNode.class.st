Class {
	#name : #GraphQLUnionTypeExtensionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'extendToken',
		'unionToken',
		'name',
		'equalToken',
		'types',
		'barTokens',
		'directives'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnionTypeExtension: self
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> barTokens [
	^ barTokens
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> barTokens: anOrderedCollection [
	barTokens := anOrderedCollection
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> compositeNodeVariables [
	^ #(#types #directives)
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> compositeTokenVariables [
	^ #(#barTokens)
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> extendToken [
	^ extendToken
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> extendToken: aSmaCCToken [
	extendToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLUnionTypeExtensionNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	barTokens := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> tokenVariables [
	^ #(#extendToken #unionToken #name #equalToken)
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> types [
	^ types
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> unionToken [
	^ unionToken
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> unionToken: aSmaCCToken [
	unionToken := aSmaCCToken
]
