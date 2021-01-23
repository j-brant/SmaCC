Class {
	#name : #DOTAttributeNode,
	#superclass : #DOTProgramNode,
	#instVars : [
		'leftBracket',
		'rightBracket',
		'assignments',
		'separators'
	],
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
DOTAttributeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttribute: self
]

{ #category : #generated }
DOTAttributeNode >> assignments [
	^ assignments
]

{ #category : #generated }
DOTAttributeNode >> assignments: anOrderedCollection [
	self setParents: self assignments to: nil.
	assignments := anOrderedCollection.
	self setParents: self assignments to: self
]

{ #category : #generated }
DOTAttributeNode >> compositeNodeVariables [
	^ #(#assignments)
]

{ #category : #generated }
DOTAttributeNode >> compositeTokenVariables [
	^ #(#separators)
]

{ #category : #'generated-initialize-release' }
DOTAttributeNode >> initialize [
	super initialize.
	assignments := OrderedCollection new: 2.
	separators := OrderedCollection new: 2.
]

{ #category : #generated }
DOTAttributeNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
DOTAttributeNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
DOTAttributeNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
DOTAttributeNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
DOTAttributeNode >> separators [
	^ separators
]

{ #category : #generated }
DOTAttributeNode >> separators: anOrderedCollection [
	separators := anOrderedCollection
]

{ #category : #generated }
DOTAttributeNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]
