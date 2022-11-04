Class {
	#name : #GraphQLDocumentNode,
	#superclass : #GraphQLProgramNode,
	#instVars : [
		'definitions',
		'bom'
	],
	#category : #'SmaCC_GraphQL'
}

{ #category : #generated }
GraphQLDocumentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDocument: self
]

{ #category : #generated }
GraphQLDocumentNode >> bom [
	^ bom
]

{ #category : #generated }
GraphQLDocumentNode >> bom: aSmaCCToken [
	bom := aSmaCCToken
]

{ #category : #generated }
GraphQLDocumentNode >> compositeNodeVariables [
	^ #(#definitions)
]

{ #category : #generated }
GraphQLDocumentNode >> definitions [
	^ definitions
]

{ #category : #generated }
GraphQLDocumentNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #'generated-initialize-release' }
GraphQLDocumentNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
]

{ #category : #generated }
GraphQLDocumentNode >> tokenVariables [
	^ #(#bom)
]
