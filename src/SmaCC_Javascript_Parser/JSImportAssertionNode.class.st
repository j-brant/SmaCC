Class {
	#name : 'JSImportAssertionNode',
	#superclass : 'JSProgramNode',
	#instVars : [
		'assertToken',
		'leftBrace',
		'rightBrace',
		'commas',
		'entries'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSImportAssertionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportAssertion: self
]

{ #category : 'generated' }
JSImportAssertionNode >> assertToken [
	^ assertToken
]

{ #category : 'generated' }
JSImportAssertionNode >> assertToken: aSmaCCToken [
	assertToken := aSmaCCToken
]

{ #category : 'generated' }
JSImportAssertionNode >> commas [
	^ commas
]

{ #category : 'generated' }
JSImportAssertionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
JSImportAssertionNode >> compositeNodeVariables [
	^ #(#entries)
]

{ #category : 'generated' }
JSImportAssertionNode >> entries [
	^ entries
]

{ #category : 'generated' }
JSImportAssertionNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : 'generated' }
JSImportAssertionNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : 'generated' }
JSImportAssertionNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : 'generated-initialize-release' }
JSImportAssertionNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
]

{ #category : 'generated' }
JSImportAssertionNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
JSImportAssertionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
JSImportAssertionNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
JSImportAssertionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
JSImportAssertionNode >> tokenVariables [
	^ #(#assertToken)
]
