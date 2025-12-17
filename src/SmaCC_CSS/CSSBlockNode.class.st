Class {
	#name : 'CSSBlockNode',
	#superclass : 'CSSProgramNode',
	#instVars : [
		'leftBrace',
		'items',
		'semicolons',
		'rightBrace'
	],
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated' }
CSSBlockNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBlock: self
]

{ #category : 'generated' }
CSSBlockNode >> compositeNodeVariables [
	^ #(#items)
]

{ #category : 'generated' }
CSSBlockNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : 'generated-initialize-release' }
CSSBlockNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : 'as yet unclassified' }
CSSBlockNode >> isBlockNode [
	^true
]

{ #category : 'generated' }
CSSBlockNode >> items [
	^ items
]

{ #category : 'generated' }
CSSBlockNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : 'generated' }
CSSBlockNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
CSSBlockNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
CSSBlockNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
CSSBlockNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
CSSBlockNode >> semicolons [
	^ semicolons
]

{ #category : 'generated' }
CSSBlockNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : 'generated' }
CSSBlockNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
