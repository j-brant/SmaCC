Class {
	#name : #RustAttributeNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'hashToken',
		'bang',
		'leftBracket',
		'path',
		'tokens',
		'equalsToken',
		'value',
		'rightBracket'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustAttributeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttribute: self
]

{ #category : #generated }
RustAttributeNode >> bang [
	^ bang
]

{ #category : #generated }
RustAttributeNode >> bang: aSmaCCToken [
	bang := aSmaCCToken
]

{ #category : #generated }
RustAttributeNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
RustAttributeNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #generated }
RustAttributeNode >> hashToken [
	^ hashToken
]

{ #category : #generated }
RustAttributeNode >> hashToken: aSmaCCToken [
	hashToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustAttributeNode >> initialize [
	super initialize.
	tokens := OrderedCollection new: 2.
]

{ #category : #generated }
RustAttributeNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
RustAttributeNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
RustAttributeNode >> nodeVariables [
	^ #(#path #value)
]

{ #category : #generated }
RustAttributeNode >> otherVariables [
	^ #(#tokens)
]

{ #category : #generated }
RustAttributeNode >> path [
	^ path
]

{ #category : #generated }
RustAttributeNode >> path: aRustPathNode [
	self path notNil ifTrue: [ self path parent: nil ].
	path := aRustPathNode.
	self path notNil ifTrue: [ self path parent: self ]
]

{ #category : #generated }
RustAttributeNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
RustAttributeNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
RustAttributeNode >> tokenVariables [
	^ #(#hashToken #bang #leftBracket #equalsToken #rightBracket)
]

{ #category : #generated }
RustAttributeNode >> tokens [
	^ tokens
]

{ #category : #generated }
RustAttributeNode >> tokens: anOrderedCollection [
	self setParent: self tokens to: nil.
	tokens := anOrderedCollection.
	self setParent: self tokens to: self
]

{ #category : #generated }
RustAttributeNode >> value [
	^ value
]

{ #category : #generated }
RustAttributeNode >> value: aRustLiteralExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustLiteralExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
