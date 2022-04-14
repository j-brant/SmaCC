Class {
	#name : #RustStaticNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'staticToken',
		'name',
		'colon',
		'type',
		'semicolon',
		'equalsToken',
		'value',
		'mutToken',
		'visibility',
		'attrs'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustStaticNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatic: self
]

{ #category : #generated }
RustStaticNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustStaticNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustStaticNode >> colon [
	^ colon
]

{ #category : #generated }
RustStaticNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustStaticNode >> compositeNodeVariables [
	^ #(#attrs)
]

{ #category : #generated }
RustStaticNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
RustStaticNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustStaticNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
]

{ #category : #generated }
RustStaticNode >> mutToken [
	^ mutToken
]

{ #category : #generated }
RustStaticNode >> mutToken: aSmaCCToken [
	mutToken := aSmaCCToken
]

{ #category : #generated }
RustStaticNode >> name [
	^ name
]

{ #category : #generated }
RustStaticNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustStaticNode >> nodeVariables [
	^ #(#type #value #visibility)
]

{ #category : #generated }
RustStaticNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustStaticNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustStaticNode >> staticToken [
	^ staticToken
]

{ #category : #generated }
RustStaticNode >> staticToken: aSmaCCToken [
	staticToken := aSmaCCToken
]

{ #category : #generated }
RustStaticNode >> tokenVariables [
	^ #(#staticToken #name #colon #semicolon #equalsToken #mutToken)
]

{ #category : #generated }
RustStaticNode >> type [
	^ type
]

{ #category : #generated }
RustStaticNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
RustStaticNode >> value [
	^ value
]

{ #category : #generated }
RustStaticNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : #generated }
RustStaticNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustStaticNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]
