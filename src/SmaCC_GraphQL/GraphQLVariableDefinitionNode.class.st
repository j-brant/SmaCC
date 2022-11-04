Class {
	#name : #GraphQLVariableDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'variable',
		'colonToken',
		'type',
		'equalToken',
		'value'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLVariableDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariableDefinition: self
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> nodeVariables [
	^ #(#variable #type #value)
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> tokenVariables [
	^ #(#colonToken #equalToken)
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> type [
	^ type
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> type: aGraphQLTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aGraphQLTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> value [
	^ value
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> value: aGraphQLProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aGraphQLProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> variable [
	^ variable
]

{ #category : #generated }
GraphQLVariableDefinitionNode >> variable: aGraphQLVariableNode [
	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aGraphQLVariableNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]
