Class {
	#name : #GraphQLEnumValueDefinitionNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'value',
		'directives',
		'description'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLEnumValueDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnumValueDefinition: self
]

{ #category : #generated }
GraphQLEnumValueDefinitionNode >> compositeNodeVariables [
	^ #(#directives)
]

{ #category : #generated }
GraphQLEnumValueDefinitionNode >> description [
	^ description
]

{ #category : #generated }
GraphQLEnumValueDefinitionNode >> description: aSmaCCToken [
	description := aSmaCCToken
]

{ #category : #generated }
GraphQLEnumValueDefinitionNode >> directives [
	^ directives
]

{ #category : #generated }
GraphQLEnumValueDefinitionNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #'generated-initialize-release' }
GraphQLEnumValueDefinitionNode >> initialize [
	super initialize.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLEnumValueDefinitionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
GraphQLEnumValueDefinitionNode >> tokenVariables [
	^ #(#description)
]

{ #category : #generated }
GraphQLEnumValueDefinitionNode >> value [
	^ value
]

{ #category : #generated }
GraphQLEnumValueDefinitionNode >> value: aGraphQLEnumValueNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aGraphQLEnumValueNode.
	self value notNil ifTrue: [ self value parent: self ]
]
