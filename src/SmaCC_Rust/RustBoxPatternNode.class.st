Class {
	#name : #RustBoxPatternNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'boxToken',
		'pattern'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustBoxPatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBoxPattern: self
]

{ #category : #generated }
RustBoxPatternNode >> boxToken [
	^ boxToken
]

{ #category : #generated }
RustBoxPatternNode >> boxToken: aSmaCCToken [
	boxToken := aSmaCCToken
]

{ #category : #generated }
RustBoxPatternNode >> nodeVariables [
	^ #(#pattern)
]

{ #category : #generated }
RustBoxPatternNode >> pattern [
	^ pattern
]

{ #category : #generated }
RustBoxPatternNode >> pattern: aRustProgramNode [
	self pattern notNil ifTrue: [ self pattern parent: nil ].
	pattern := aRustProgramNode.
	self pattern notNil ifTrue: [ self pattern parent: self ]
]

{ #category : #generated }
RustBoxPatternNode >> tokenVariables [
	^ #(#boxToken)
]
