Class {
	#name : #RustVisibilityNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'pubToken',
		'leftParen',
		'crateToken',
		'rightParen',
		'selfToken',
		'superToken',
		'inToken',
		'path'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustVisibilityNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVisibility: self
]

{ #category : #generated }
RustVisibilityNode >> crateToken [
	^ crateToken
]

{ #category : #generated }
RustVisibilityNode >> crateToken: aSmaCCToken [
	crateToken := aSmaCCToken
]

{ #category : #generated }
RustVisibilityNode >> inToken [
	^ inToken
]

{ #category : #generated }
RustVisibilityNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : #generated }
RustVisibilityNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustVisibilityNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustVisibilityNode >> nodeVariables [
	^ #(#path)
]

{ #category : #generated }
RustVisibilityNode >> path [
	^ path
]

{ #category : #generated }
RustVisibilityNode >> path: aRustPathNode [
	self path notNil ifTrue: [ self path parent: nil ].
	path := aRustPathNode.
	self path notNil ifTrue: [ self path parent: self ]
]

{ #category : #generated }
RustVisibilityNode >> pubToken [
	^ pubToken
]

{ #category : #generated }
RustVisibilityNode >> pubToken: aSmaCCToken [
	pubToken := aSmaCCToken
]

{ #category : #generated }
RustVisibilityNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustVisibilityNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustVisibilityNode >> selfToken [
	^ selfToken
]

{ #category : #generated }
RustVisibilityNode >> selfToken: aSmaCCToken [
	selfToken := aSmaCCToken
]

{ #category : #generated }
RustVisibilityNode >> superToken [
	^ superToken
]

{ #category : #generated }
RustVisibilityNode >> superToken: aSmaCCToken [
	superToken := aSmaCCToken
]

{ #category : #generated }
RustVisibilityNode >> tokenVariables [
	^ #(#pubToken #leftParen #crateToken #rightParen #selfToken #superToken #inToken)
]
