Class {
	#name : #GraphQLObjectFieldNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'name',
		'colonToken',
		'value'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLObjectFieldNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitObjectField: self
]

{ #category : #generated }
GraphQLObjectFieldNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
GraphQLObjectFieldNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectFieldNode >> name [
	^ name
]

{ #category : #generated }
GraphQLObjectFieldNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLObjectFieldNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
GraphQLObjectFieldNode >> tokenVariables [
	^ #(#name #colonToken)
]

{ #category : #generated }
GraphQLObjectFieldNode >> value [
	^ value
]

{ #category : #generated }
GraphQLObjectFieldNode >> value: aGraphQLProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aGraphQLProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]
