Class {
	#name : #CSPropertyPatternNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'type',
		'leftBrace',
		'rightBrace',
		'patterns',
		'commas',
		'designation'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSPropertyPatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPropertyPattern: self
]

{ #category : #generated }
CSPropertyPatternNode >> commas [
	^ commas
]

{ #category : #generated }
CSPropertyPatternNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CSPropertyPatternNode >> compositeNodeVariables [
	^ #(#patterns)
]

{ #category : #generated }
CSPropertyPatternNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
CSPropertyPatternNode >> designation [
	^ designation
]

{ #category : #generated }
CSPropertyPatternNode >> designation: aCSVariableDesignationNode [
	self designation notNil ifTrue: [ self designation parent: nil ].
	designation := aCSVariableDesignationNode.
	self designation notNil ifTrue: [ self designation parent: self ]
]

{ #category : #'generated-initialize-release' }
CSPropertyPatternNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CSPropertyPatternNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CSPropertyPatternNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CSPropertyPatternNode >> nodeVariables [
	^ #(#type #designation)
]

{ #category : #generated }
CSPropertyPatternNode >> patterns [
	^ patterns
]

{ #category : #generated }
CSPropertyPatternNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
CSPropertyPatternNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CSPropertyPatternNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CSPropertyPatternNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : #generated }
CSPropertyPatternNode >> type [
	^ type
]

{ #category : #generated }
CSPropertyPatternNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
