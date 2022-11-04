Class {
	#name : #GraphQLFragmentSpreadNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'ellipsisToken',
		'name',
		'directives'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLFragmentSpreadNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFragmentSpread: self
]

{ #category : #generated }
GraphQLFragmentSpreadNode >> compositeNodeVariables [
	^ #(#directives)
]

{ #category : #generated }
GraphQLFragmentSpreadNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLFragmentSpreadNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
GraphQLFragmentSpreadNode >> ellipsisToken [
	^ ellipsisToken
]

{ #category : #generated }
GraphQLFragmentSpreadNode >> ellipsisToken: aSmaCCToken [
	ellipsisToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
GraphQLFragmentSpreadNode >> initialize [
	super initialize.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLFragmentSpreadNode >> name [
	^ name
]

{ #category : #generated }
GraphQLFragmentSpreadNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLFragmentSpreadNode >> tokenVariables [
	^ #(#ellipsisToken #name)
]
