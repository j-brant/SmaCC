Class {
	#name : #RustTupleFieldNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'attrs',
		'type',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTupleFieldNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTupleField: self
]

{ #category : #generated }
RustTupleFieldNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustTupleFieldNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustTupleFieldNode >> compositeNodeVariables [
	^ #(#attrs)
]

{ #category : #'generated-initialize-release' }
RustTupleFieldNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
]

{ #category : #generated }
RustTupleFieldNode >> nodeVariables [
	^ #(#type #visibility)
]

{ #category : #generated }
RustTupleFieldNode >> type [
	^ type
]

{ #category : #generated }
RustTupleFieldNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
RustTupleFieldNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustTupleFieldNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]
