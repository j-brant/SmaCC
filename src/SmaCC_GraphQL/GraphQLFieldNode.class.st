Class {
	#name : #GraphQLFieldNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'name',
		'leftBrace',
		'selections',
		'rightBrace',
		'directives',
		'leftParen',
		'arguments',
		'rightParen',
		'alias',
		'colonToken'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLFieldNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitField: self
]

{ #category : #generated }
GraphQLFieldNode >> alias [
	^ alias
]

{ #category : #generated }
GraphQLFieldNode >> alias: aSmaCCToken [
	alias := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldNode >> arguments [
	^ arguments
]

{ #category : #generated }
GraphQLFieldNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
GraphQLFieldNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
GraphQLFieldNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldNode >> compositeNodeVariables [
	^ #(#selections #directives #arguments)
]

{ #category : #generated }
GraphQLFieldNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLFieldNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #'generated-initialize-release' }
GraphQLFieldNode >> initialize [
	super initialize.
	selections := OrderedCollection new: 2.
	directives := OrderedCollection new: 2.
	arguments := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLFieldNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
GraphQLFieldNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
GraphQLFieldNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldNode >> name [
	^ name
]

{ #category : #generated }
GraphQLFieldNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
GraphQLFieldNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
GraphQLFieldNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
GraphQLFieldNode >> selections [
	^ selections
]

{ #category : #generated }
GraphQLFieldNode >> selections: anOrderedCollection [
	self setParents: self selections to: nil.
	selections := anOrderedCollection.
	self setParents: self selections to: self
]

{ #category : #generated }
GraphQLFieldNode >> tokenVariables [
	^ #(#name #leftBrace #rightBrace #leftParen #rightParen #alias #colonToken)
]
