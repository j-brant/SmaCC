Class {
	#name : #RustAttributeNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'hashToken',
		'bang',
		'leftBracket',
		'path',
		'value',
		'equalsToken',
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
RustAttributeNode >> value [
	^ value
]

{ #category : #generated }
RustAttributeNode >> value: aRustProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]
