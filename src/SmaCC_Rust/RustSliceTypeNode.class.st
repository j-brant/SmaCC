Class {
	#name : #RustSliceTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'leftBracket',
		'type',
		'rightBracket'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustSliceTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSliceType: self
]

{ #category : #generated }
RustSliceTypeNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
RustSliceTypeNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
RustSliceTypeNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
RustSliceTypeNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
RustSliceTypeNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
RustSliceTypeNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : #generated }
RustSliceTypeNode >> type [
	^ type
]

{ #category : #generated }
RustSliceTypeNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]
