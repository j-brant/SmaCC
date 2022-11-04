Class {
	#name : #GraphQLArgumentNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'name',
		'colonToken',
		'value'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLArgumentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArgument: self
]

{ #category : #generated }
GraphQLArgumentNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
GraphQLArgumentNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
GraphQLArgumentNode >> name [
	^ name
]

{ #category : #generated }
GraphQLArgumentNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLArgumentNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
GraphQLArgumentNode >> tokenVariables [
	^ #(#name #colonToken)
]

{ #category : #generated }
GraphQLArgumentNode >> value [
	^ value
]

{ #category : #generated }
GraphQLArgumentNode >> value: aGraphQLProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aGraphQLProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]
