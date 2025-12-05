Class {
	#name : 'JSTupleTypeNode',
	#superclass : 'JSTypeNode',
	#instVars : [
		'leftBracket',
		'rightBracket',
		'commas',
		'types',
		'readonlyToken'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSTupleTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTupleType: self
]

{ #category : 'generated' }
JSTupleTypeNode >> commas [
	^ commas
]

{ #category : 'generated' }
JSTupleTypeNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
JSTupleTypeNode >> compositeNodeVariables [
	^ #(#types)
]

{ #category : 'generated' }
JSTupleTypeNode >> ignoredCompositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : 'generated' }
JSTupleTypeNode >> ignoredTokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : 'generated-initialize-release' }
JSTupleTypeNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
]

{ #category : 'generated' }
JSTupleTypeNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
JSTupleTypeNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
JSTupleTypeNode >> readonlyToken [
	^ readonlyToken
]

{ #category : 'generated' }
JSTupleTypeNode >> readonlyToken: aSmaCCToken [
	readonlyToken := aSmaCCToken
]

{ #category : 'generated' }
JSTupleTypeNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
JSTupleTypeNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : 'generated' }
JSTupleTypeNode >> tokenVariables [
	^ #(#readonlyToken)
]

{ #category : 'generated' }
JSTupleTypeNode >> types [
	^ types
]

{ #category : 'generated' }
JSTupleTypeNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
