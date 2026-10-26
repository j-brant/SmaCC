Class {
	#name : 'RustConstantNode',
	#superclass : 'RustItemNode',
	#instVars : [
		'constToken',
		'name',
		'colon',
		'type',
		'semicolon',
		'equalsToken',
		'value',
		'visibility'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustConstantNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstant: self
]

{ #category : 'generated' }
RustConstantNode >> colon [
	^ colon
]

{ #category : 'generated' }
RustConstantNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : 'generated' }
RustConstantNode >> constToken [
	^ constToken
]

{ #category : 'generated' }
RustConstantNode >> constToken: aSmaCCToken [
	constToken := aSmaCCToken
]

{ #category : 'generated' }
RustConstantNode >> equalsToken [
	^ equalsToken
]

{ #category : 'generated' }
RustConstantNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : 'generated' }
RustConstantNode >> name [
	^ name
]

{ #category : 'generated' }
RustConstantNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RustConstantNode >> nodeVariables [
	^ #(#type #value #visibility)
]

{ #category : 'generated' }
RustConstantNode >> semicolon [
	^ semicolon
]

{ #category : 'generated' }
RustConstantNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : 'generated' }
RustConstantNode >> tokenVariables [
	^ #(#constToken #name #colon #semicolon #equalsToken)
]

{ #category : 'generated' }
RustConstantNode >> type [
	^ type
]

{ #category : 'generated' }
RustConstantNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
RustConstantNode >> value [
	^ value
]

{ #category : 'generated' }
RustConstantNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : 'generated' }
RustConstantNode >> visibility [
	^ visibility
]

{ #category : 'generated' }
RustConstantNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]
