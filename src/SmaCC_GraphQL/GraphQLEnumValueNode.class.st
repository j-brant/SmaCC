Class {
	#name : #GraphQLEnumValueNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLEnumValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnumValue: self
]

{ #category : #generated }
GraphQLEnumValueNode >> name [
	^ name
]

{ #category : #generated }
GraphQLEnumValueNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
GraphQLEnumValueNode >> tokenVariables [
	^ #(#name)
]
