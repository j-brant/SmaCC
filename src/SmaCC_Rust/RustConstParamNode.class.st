Class {
	#name : #RustConstParamNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'constToken',
		'name',
		'colon',
		'type'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustConstParamNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstParam: self
]

{ #category : #generated }
RustConstParamNode >> colon [
	^ colon
]

{ #category : #generated }
RustConstParamNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustConstParamNode >> constToken [
	^ constToken
]

{ #category : #generated }
RustConstParamNode >> constToken: aSmaCCToken [
	constToken := aSmaCCToken
]

{ #category : #generated }
RustConstParamNode >> name [
	^ name
]

{ #category : #generated }
RustConstParamNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustConstParamNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
RustConstParamNode >> tokenVariables [
	^ #(#constToken #name #colon)
]

{ #category : #generated }
RustConstParamNode >> type [
	^ type
]

{ #category : #generated }
RustConstParamNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]
