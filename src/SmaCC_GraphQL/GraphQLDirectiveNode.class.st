Class {
	#name : #GraphQLDirectiveNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'atToken',
		'name',
		'leftParen',
		'arguments',
		'rightParen'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLDirectiveNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDirective: self
]

{ #category : #generated }
GraphQLDirectiveNode >> arguments [
	^ arguments
]

{ #category : #generated }
GraphQLDirectiveNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
GraphQLDirectiveNode >> atToken [
	^ atToken
]

{ #category : #generated }
GraphQLDirectiveNode >> atToken: aSmaCCToken [
	atToken := aSmaCCToken
]

{ #category : #generated }
GraphQLDirectiveNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : #'generated-initialize-release' }
GraphQLDirectiveNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLDirectiveNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
GraphQLDirectiveNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
GraphQLDirectiveNode >> name [
	^ name
]

{ #category : #generated }
GraphQLDirectiveNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLDirectiveNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
GraphQLDirectiveNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
GraphQLDirectiveNode >> tokenVariables [
	^ #(#atToken #name #leftParen #rightParen)
]
