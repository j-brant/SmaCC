Class {
	#name : #CSPositionalPatternNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'type',
		'leftParen',
		'rightParen',
		'designation',
		'leftBraceToken',
		'rightBrace',
		'patterns',
		'commas'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSPositionalPatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPositionalPattern: self
]

{ #category : #generated }
CSPositionalPatternNode >> commas [
	^ commas
]

{ #category : #generated }
CSPositionalPatternNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CSPositionalPatternNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : #generated }
CSPositionalPatternNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
CSPositionalPatternNode >> designation [
	^ designation
]

{ #category : #generated }
CSPositionalPatternNode >> designation: aCSVariableDesignationNode [
	self designation notNil ifTrue: [ self designation parent: nil ].
	designation := aCSVariableDesignationNode.
	self designation notNil ifTrue: [ self designation parent: self ]
]

{ #category : #'generated-initialize-release' }
CSPositionalPatternNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CSPositionalPatternNode >> leftBraceToken [
	^ leftBraceToken
]

{ #category : #generated }
CSPositionalPatternNode >> leftBraceToken: aSmaCCToken [
	leftBraceToken := aSmaCCToken
]

{ #category : #generated }
CSPositionalPatternNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CSPositionalPatternNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CSPositionalPatternNode >> nodeVariables [
	^ #(#type #designation)
]

{ #category : #generated }
CSPositionalPatternNode >> patterns [
	^ patterns
]

{ #category : #generated }
CSPositionalPatternNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
CSPositionalPatternNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CSPositionalPatternNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CSPositionalPatternNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSPositionalPatternNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSPositionalPatternNode >> tokenVariables [
	^ #(#leftParen #rightParen #leftBraceToken #rightBrace)
]

{ #category : #generated }
CSPositionalPatternNode >> type [
	^ type
]

{ #category : #generated }
CSPositionalPatternNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
