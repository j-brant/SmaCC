Class {
	#name : 'JSImportAttributesNode',
	#superclass : 'JSProgramNode',
	#instVars : [
		'withToken',
		'leftBrace',
		'rightBrace',
		'commas',
		'entries'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSImportAttributesNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportAttributes: self
]

{ #category : 'generated' }
JSImportAttributesNode >> commas [
	^ commas
]

{ #category : 'generated' }
JSImportAttributesNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
JSImportAttributesNode >> compositeNodeVariables [
	^ #(#entries)
]

{ #category : 'generated' }
JSImportAttributesNode >> entries [
	^ entries
]

{ #category : 'generated' }
JSImportAttributesNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : 'generated' }
JSImportAttributesNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : 'generated' }
JSImportAttributesNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : 'generated-initialize-release' }
JSImportAttributesNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
]

{ #category : 'generated' }
JSImportAttributesNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
JSImportAttributesNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
JSImportAttributesNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
JSImportAttributesNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
JSImportAttributesNode >> tokenVariables [
	^ #(#withToken)
]

{ #category : 'generated' }
JSImportAttributesNode >> withToken [
	^ withToken
]

{ #category : 'generated' }
JSImportAttributesNode >> withToken: aSmaCCToken [
	withToken := aSmaCCToken
]
