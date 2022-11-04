Class {
	#name : #GraphQLScalarTypeExtensionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'extendToken',
		'scalarToken',
		'name',
		'directives'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScalarTypeExtension: self
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> compositeNodeVariables [
	^ #(#directives)
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> extendToken [
	^ extendToken
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> extendToken: aSmaCCToken [
	extendToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLScalarTypeExtensionNode >> initialize [
	super initialize.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> name [
	^ name
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> scalarToken [
	^ scalarToken
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> scalarToken: aSmaCCToken [
	scalarToken := aSmaCCToken
]

{ #category : #generated }
GraphQLScalarTypeExtensionNode >> tokenVariables [
	^ #(#extendToken #scalarToken #name)
]
