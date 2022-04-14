Class {
	#name : #RustTypeParamNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'name',
		'equalsToken',
		'type',
		'colon',
		'typeBounds',
		'pluses'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTypeParamNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeParam: self
]

{ #category : #generated }
RustTypeParamNode >> colon [
	^ colon
]

{ #category : #generated }
RustTypeParamNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustTypeParamNode >> compositeNodeVariables [
	^ #(#typeBounds)
]

{ #category : #generated }
RustTypeParamNode >> compositeTokenVariables [
	^ #(#pluses)
]

{ #category : #generated }
RustTypeParamNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
RustTypeParamNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustTypeParamNode >> initialize [
	super initialize.
	typeBounds := OrderedCollection new: 2.
	pluses := OrderedCollection new: 2.
]

{ #category : #generated }
RustTypeParamNode >> name [
	^ name
]

{ #category : #generated }
RustTypeParamNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustTypeParamNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
RustTypeParamNode >> pluses [
	^ pluses
]

{ #category : #generated }
RustTypeParamNode >> pluses: anOrderedCollection [
	pluses := anOrderedCollection
]

{ #category : #generated }
RustTypeParamNode >> tokenVariables [
	^ #(#name #equalsToken #colon)
]

{ #category : #generated }
RustTypeParamNode >> type [
	^ type
]

{ #category : #generated }
RustTypeParamNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
RustTypeParamNode >> typeBounds [
	^ typeBounds
]

{ #category : #generated }
RustTypeParamNode >> typeBounds: anOrderedCollection [
	self setParents: self typeBounds to: nil.
	typeBounds := anOrderedCollection.
	self setParents: self typeBounds to: self
]
