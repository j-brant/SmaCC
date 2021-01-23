Class {
	#name : #DOTSubgraphNode,
	#superclass : #DOTStatementNode,
	#instVars : [
		'leftBrace',
		'statements',
		'separators',
		'rightBrace',
		'subgraphToken',
		'id'
	],
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
DOTSubgraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubgraph: self
]

{ #category : #generated }
DOTSubgraphNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
DOTSubgraphNode >> compositeTokenVariables [
	^ #(#separators)
]

{ #category : #generated }
DOTSubgraphNode >> id [
	^ id
]

{ #category : #generated }
DOTSubgraphNode >> id: aSmaCCToken [
	id := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
DOTSubgraphNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	separators := OrderedCollection new: 2.
]

{ #category : #generated }
DOTSubgraphNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
DOTSubgraphNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
DOTSubgraphNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
DOTSubgraphNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
DOTSubgraphNode >> separators [
	^ separators
]

{ #category : #generated }
DOTSubgraphNode >> separators: anOrderedCollection [
	separators := anOrderedCollection
]

{ #category : #generated }
DOTSubgraphNode >> statements [
	^ statements
]

{ #category : #generated }
DOTSubgraphNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
DOTSubgraphNode >> subgraphToken [
	^ subgraphToken
]

{ #category : #generated }
DOTSubgraphNode >> subgraphToken: aSmaCCToken [
	subgraphToken := aSmaCCToken
]

{ #category : #generated }
DOTSubgraphNode >> tokenVariables [
	^ #(#leftBrace #rightBrace #subgraphToken #id)
]
