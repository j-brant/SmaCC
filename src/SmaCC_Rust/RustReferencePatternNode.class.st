Class {
	#name : #RustReferencePatternNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'amp',
		'pattern',
		'mutToken'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustReferencePatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReferencePattern: self
]

{ #category : #generated }
RustReferencePatternNode >> amp [
	^ amp
]

{ #category : #generated }
RustReferencePatternNode >> amp: aSmaCCToken [
	amp := aSmaCCToken
]

{ #category : #generated }
RustReferencePatternNode >> mutToken [
	^ mutToken
]

{ #category : #generated }
RustReferencePatternNode >> mutToken: aSmaCCToken [
	mutToken := aSmaCCToken
]

{ #category : #generated }
RustReferencePatternNode >> nodeVariables [
	^ #(#pattern)
]

{ #category : #generated }
RustReferencePatternNode >> pattern [
	^ pattern
]

{ #category : #generated }
RustReferencePatternNode >> pattern: aRustProgramNode [
	self pattern notNil ifTrue: [ self pattern parent: nil ].
	pattern := aRustProgramNode.
	self pattern notNil ifTrue: [ self pattern parent: self ]
]

{ #category : #generated }
RustReferencePatternNode >> tokenVariables [
	^ #(#amp #mutToken)
]
