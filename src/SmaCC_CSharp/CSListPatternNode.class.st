Class {
	#name : #CSListPatternNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'leftBracket',
		'rightBracket',
		'patterns',
		'commas',
		'designation'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSListPatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitListPattern: self
]

{ #category : #generated }
CSListPatternNode >> commas [
	^ commas
]

{ #category : #generated }
CSListPatternNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CSListPatternNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : #generated }
CSListPatternNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
CSListPatternNode >> designation [
	^ designation
]

{ #category : #generated }
CSListPatternNode >> designation: aCSVariableDesignationNode [
	self designation notNil ifTrue: [ self designation parent: nil ].
	designation := aCSVariableDesignationNode.
	self designation notNil ifTrue: [ self designation parent: self ]
]

{ #category : #'generated-initialize-release' }
CSListPatternNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CSListPatternNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
CSListPatternNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
CSListPatternNode >> nodeVariables [
	^ #(#designation)
]

{ #category : #generated }
CSListPatternNode >> patterns [
	^ patterns
]

{ #category : #generated }
CSListPatternNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
CSListPatternNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
CSListPatternNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
CSListPatternNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]
