Class {
	#name : #DOTGraphNode,
	#superclass : #DOTProgramNode,
	#instVars : [
		'graphToken',
		'leftBrace',
		'statements',
		'separators',
		'rightBrace',
		'id',
		'strictToken'
	],
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
DOTGraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGraph: self
]

{ #category : #generated }
DOTGraphNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
DOTGraphNode >> compositeTokenVariables [
	^ #(#separators)
]

{ #category : #generated }
DOTGraphNode >> graphToken [
	^ graphToken
]

{ #category : #generated }
DOTGraphNode >> graphToken: aSmaCCToken [
	graphToken := aSmaCCToken
]

{ #category : #generated }
DOTGraphNode >> id [
	^ id
]

{ #category : #generated }
DOTGraphNode >> id: aSmaCCToken [
	id := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
DOTGraphNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	separators := OrderedCollection new: 2.
]

{ #category : #generated }
DOTGraphNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
DOTGraphNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
DOTGraphNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
DOTGraphNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
DOTGraphNode >> separators [
	^ separators
]

{ #category : #generated }
DOTGraphNode >> separators: anOrderedCollection [
	separators := anOrderedCollection
]

{ #category : #generated }
DOTGraphNode >> statements [
	^ statements
]

{ #category : #generated }
DOTGraphNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
DOTGraphNode >> strictToken [
	^ strictToken
]

{ #category : #generated }
DOTGraphNode >> strictToken: aSmaCCToken [
	strictToken := aSmaCCToken
]

{ #category : #generated }
DOTGraphNode >> tokenVariables [
	^ #(#graphToken #leftBrace #rightBrace #id #strictToken)
]
