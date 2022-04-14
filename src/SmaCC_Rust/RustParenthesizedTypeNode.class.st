Class {
	#name : #RustParenthesizedTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'leftParen',
		'type',
		'rightParen'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustParenthesizedTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitParenthesizedType: self
]

{ #category : #generated }
RustParenthesizedTypeNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustParenthesizedTypeNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustParenthesizedTypeNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
RustParenthesizedTypeNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustParenthesizedTypeNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustParenthesizedTypeNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]

{ #category : #generated }
RustParenthesizedTypeNode >> type [
	^ type
]

{ #category : #generated }
RustParenthesizedTypeNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]
