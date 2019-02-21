Class {
	#name : #JSONArrayNode,
	#superclass : #JSONParseNode,
	#instVars : [
		'leftBracket',
		'rightBracket',
		'commas',
		'values'
	],
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
JSONArrayNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitArray: self
]

{ #category : #generated }
JSONArrayNode >> commas [
	^ commas
]

{ #category : #generated }
JSONArrayNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSONArrayNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
JSONArrayNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
JSONArrayNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
JSONArrayNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
JSONArrayNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
JSONArrayNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
JSONArrayNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
JSONArrayNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : #generated }
JSONArrayNode >> values [
	^ values
]

{ #category : #generated }
JSONArrayNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
