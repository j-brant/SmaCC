Class {
	#name : #GraphQLListTypeNode,
	#superclass : #GraphQLTypeNode,
	#instVars : [
		'leftBracket',
		'type',
		'rightBracket'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLListTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitListType: self
]

{ #category : #generated }
GraphQLListTypeNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
GraphQLListTypeNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
GraphQLListTypeNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
GraphQLListTypeNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
GraphQLListTypeNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
GraphQLListTypeNode >> tokenVariables [
	^ #(#leftBracket #rightBracket #bangToken)
]

{ #category : #generated }
GraphQLListTypeNode >> type [
	^ type
]

{ #category : #generated }
GraphQLListTypeNode >> type: aGraphQLTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aGraphQLTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
