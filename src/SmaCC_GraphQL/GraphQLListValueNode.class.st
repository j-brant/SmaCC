Class {
	#name : #GraphQLListValueNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'leftBracket',
		'rightBracket',
		'values'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLListValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitListValue: self
]

{ #category : #generated }
GraphQLListValueNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #'generated-initialize-release' }
GraphQLListValueNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLListValueNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
GraphQLListValueNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
GraphQLListValueNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
GraphQLListValueNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
GraphQLListValueNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : #generated }
GraphQLListValueNode >> values [
	^ values
]

{ #category : #generated }
GraphQLListValueNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
