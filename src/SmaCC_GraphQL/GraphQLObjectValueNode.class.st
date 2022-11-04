Class {
	#name : #GraphQLObjectValueNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'leftBrace',
		'fields',
		'rightBrace'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLObjectValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitObjectValue: self
]

{ #category : #generated }
GraphQLObjectValueNode >> compositeNodeVariables [
	^ #(#fields)
]

{ #category : #generated }
GraphQLObjectValueNode >> fields [
	^ fields
]

{ #category : #generated }
GraphQLObjectValueNode >> fields: anOrderedCollection [
	self setParents: self fields to: nil.
	fields := anOrderedCollection.
	self setParents: self fields to: self
]

{ #category : #'generated-initialize-release' }
GraphQLObjectValueNode >> initialize [
	super initialize.
	fields := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLObjectValueNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLObjectValueNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectValueNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLObjectValueNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectValueNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
