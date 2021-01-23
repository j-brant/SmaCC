Class {
	#name : #DOTNodeIdentifierNode,
	#superclass : #DOTProgramNode,
	#instVars : [
		'identifiers',
		'colonTokens',
		'direction'
	],
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
DOTNodeIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNodeIdentifier: self
]

{ #category : #generated }
DOTNodeIdentifierNode >> colonTokens [
	^ colonTokens
]

{ #category : #generated }
DOTNodeIdentifierNode >> colonTokens: anOrderedCollection [
	colonTokens := anOrderedCollection
]

{ #category : #generated }
DOTNodeIdentifierNode >> compositeTokenVariables [
	^ #(#identifiers #colonTokens)
]

{ #category : #generated }
DOTNodeIdentifierNode >> direction [
	^ direction
]

{ #category : #generated }
DOTNodeIdentifierNode >> direction: aSmaCCToken [
	direction := aSmaCCToken
]

{ #category : #generated }
DOTNodeIdentifierNode >> identifiers [
	^ identifiers
]

{ #category : #generated }
DOTNodeIdentifierNode >> identifiers: anOrderedCollection [
	identifiers := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
DOTNodeIdentifierNode >> initialize [
	super initialize.
	identifiers := OrderedCollection new: 2.
	colonTokens := OrderedCollection new: 2.
]

{ #category : #generated }
DOTNodeIdentifierNode >> tokenVariables [
	^ #(#direction)
]
