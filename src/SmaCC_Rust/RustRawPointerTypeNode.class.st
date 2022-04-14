Class {
	#name : #RustRawPointerTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'star',
		'mutToken',
		'type',
		'constToken'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustRawPointerTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRawPointerType: self
]

{ #category : #generated }
RustRawPointerTypeNode >> constToken [
	^ constToken
]

{ #category : #generated }
RustRawPointerTypeNode >> constToken: aSmaCCToken [
	constToken := aSmaCCToken
]

{ #category : #generated }
RustRawPointerTypeNode >> mutToken [
	^ mutToken
]

{ #category : #generated }
RustRawPointerTypeNode >> mutToken: aSmaCCToken [
	mutToken := aSmaCCToken
]

{ #category : #generated }
RustRawPointerTypeNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
RustRawPointerTypeNode >> star [
	^ star
]

{ #category : #generated }
RustRawPointerTypeNode >> star: aSmaCCToken [
	star := aSmaCCToken
]

{ #category : #generated }
RustRawPointerTypeNode >> tokenVariables [
	^ #(#star #mutToken #constToken)
]

{ #category : #generated }
RustRawPointerTypeNode >> type [
	^ type
]

{ #category : #generated }
RustRawPointerTypeNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]
