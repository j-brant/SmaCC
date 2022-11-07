Class {
	#name : #GraphQLUnionTypeExtensionNode,
	#superclass : #GraphQLTypeExtensionNode,
	#instVars : [
		'unionToken',
		'equalToken',
		'types',
		'barTokens'
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
GraphQLUnionTypeExtensionNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLUnionTypeExtensionNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	barTokens := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLUnionTypeExtensionNode >> tokenVariables [
	^ #(#unionToken #equalToken #extendToken #name)
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
