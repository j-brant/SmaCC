Class {
	#name : #RustStructFieldNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'attrs',
		'name',
		'colon',
		'type',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustStructFieldNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStructField: self
]

{ #category : #generated }
RustStructFieldNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustStructFieldNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustStructFieldNode >> colon [
	^ colon
]

{ #category : #generated }
RustStructFieldNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustStructFieldNode >> compositeNodeVariables [
	^ #(#attrs)
]

{ #category : #'generated-initialize-release' }
RustStructFieldNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
]

{ #category : #generated }
RustStructFieldNode >> name [
	^ name
]

{ #category : #generated }
RustStructFieldNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustStructFieldNode >> nodeVariables [
	^ #(#type #visibility)
]

{ #category : #generated }
RustStructFieldNode >> tokenVariables [
	^ #(#name #colon)
]

{ #category : #generated }
RustStructFieldNode >> type [
	^ type
]

{ #category : #generated }
RustStructFieldNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
RustStructFieldNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustStructFieldNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]
