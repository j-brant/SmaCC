Class {
	#name : #GraphQLTypeExtensionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'extendToken',
		'name',
		'directives'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLTypeExtensionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeExtension: self
]

{ #category : #generated }
GraphQLTypeExtensionNode >> compositeNodeVariables [
	^ #(#directives)
]

{ #category : #generated }
GraphQLTypeExtensionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLTypeExtensionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLTypeExtensionNode >> extendToken [
	^ extendToken
]

{ #category : #generated }
GraphQLTypeExtensionNode >> extendToken: aSmaCCToken [
	extendToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLTypeExtensionNode >> initialize [
	super initialize.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLTypeExtensionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLTypeExtensionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLTypeExtensionNode >> tokenVariables [
	^ #(#extendToken #name)
]
