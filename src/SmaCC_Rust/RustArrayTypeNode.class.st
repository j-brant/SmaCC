Class {
	#name : #RustArrayTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'leftBracket',
		'type',
		'semicolon',
		'length',
		'rightBracket'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustArrayTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrayType: self
]

{ #category : #generated }
RustArrayTypeNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
RustArrayTypeNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
RustArrayTypeNode >> length [
	^ length
]

{ #category : #generated }
RustArrayTypeNode >> length: aRustExpressionNode [
	self length notNil ifTrue: [ self length parent: nil ].
	length := aRustExpressionNode.
	self length notNil ifTrue: [ self length parent: self ]
]

{ #category : #generated }
RustArrayTypeNode >> nodeVariables [
	^ #(#type #length)
]

{ #category : #generated }
RustArrayTypeNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
RustArrayTypeNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
RustArrayTypeNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustArrayTypeNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustArrayTypeNode >> tokenVariables [
	^ #(#leftBracket #semicolon #rightBracket)
]

{ #category : #generated }
RustArrayTypeNode >> type [
	^ type
]

{ #category : #generated }
RustArrayTypeNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]
