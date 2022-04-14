Class {
	#name : #RustReferenceTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'amp',
		'type',
		'mutToken',
		'lifetime'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustReferenceTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReferenceType: self
]

{ #category : #generated }
RustReferenceTypeNode >> amp [
	^ amp
]

{ #category : #generated }
RustReferenceTypeNode >> amp: aSmaCCToken [
	amp := aSmaCCToken
]

{ #category : #generated }
RustReferenceTypeNode >> lifetime [
	^ lifetime
]

{ #category : #generated }
RustReferenceTypeNode >> lifetime: aSmaCCToken [
	lifetime := aSmaCCToken
]

{ #category : #generated }
RustReferenceTypeNode >> mutToken [
	^ mutToken
]

{ #category : #generated }
RustReferenceTypeNode >> mutToken: aSmaCCToken [
	mutToken := aSmaCCToken
]

{ #category : #generated }
RustReferenceTypeNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
RustReferenceTypeNode >> tokenVariables [
	^ #(#amp #mutToken #lifetime)
]

{ #category : #generated }
RustReferenceTypeNode >> type [
	^ type
]

{ #category : #generated }
RustReferenceTypeNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]
