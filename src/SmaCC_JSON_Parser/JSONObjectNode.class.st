Class {
	#name : #JSONObjectNode,
	#superclass : #JSONParseNode,
	#instVars : [
		'leftBrace',
		'rightBrace',
		'commas',
		'members'
	],
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
JSONObjectNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitObject: self
]

{ #category : #generated }
JSONObjectNode >> commas [
	^ commas
]

{ #category : #generated }
JSONObjectNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSONObjectNode >> compositeNodeVariables [
	^ #(#members)
]

{ #category : #generated }
JSONObjectNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
JSONObjectNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	members := OrderedCollection new: 2.
]

{ #category : #generated }
JSONObjectNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JSONObjectNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JSONObjectNode >> members [
	^ members
]

{ #category : #generated }
JSONObjectNode >> members: anOrderedCollection [
	self setParents: self members to: nil.
	members := anOrderedCollection.
	self setParents: self members to: self
]

{ #category : #generated }
JSONObjectNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JSONObjectNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JSONObjectNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
