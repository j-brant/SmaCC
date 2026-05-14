Class {
	#name : 'KotlinIndexingSuffixNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'leftBracket',
		'indexes',
		'commaTokens',
		'rightBracket'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinIndexingSuffixNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitIndexingSuffix: self
]

{ #category : 'generated' }
KotlinIndexingSuffixNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinIndexingSuffixNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinIndexingSuffixNode >> compositeNodeVariables [
	^ #(#indexes)
]

{ #category : 'generated' }
KotlinIndexingSuffixNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : 'generated' }
KotlinIndexingSuffixNode >> indexes [
	^ indexes
]

{ #category : 'generated' }
KotlinIndexingSuffixNode >> indexes: anOrderedCollection [
	self setParents: self indexes to: nil.
	indexes := anOrderedCollection.
	self setParents: self indexes to: self
]

{ #category : 'generated-initialize-release' }
KotlinIndexingSuffixNode >> initialize [
	super initialize.
	indexes := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinIndexingSuffixNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
KotlinIndexingSuffixNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
KotlinIndexingSuffixNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
KotlinIndexingSuffixNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : 'generated' }
KotlinIndexingSuffixNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]
