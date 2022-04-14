Class {
	#name : #RustLetStatementNode,
	#superclass : #RustStatementNode,
	#instVars : [
		'attrs',
		'letToken',
		'patterns',
		'bars',
		'semicolon',
		'equalsToken',
		'value',
		'colon',
		'type'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustLetStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLetStatement: self
]

{ #category : #generated }
RustLetStatementNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustLetStatementNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustLetStatementNode >> bars [
	^ bars
]

{ #category : #generated }
RustLetStatementNode >> bars: anOrderedCollection [
	bars := anOrderedCollection
]

{ #category : #generated }
RustLetStatementNode >> colon [
	^ colon
]

{ #category : #generated }
RustLetStatementNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustLetStatementNode >> compositeNodeVariables [
	^ #(#attrs #patterns)
]

{ #category : #generated }
RustLetStatementNode >> compositeTokenVariables [
	^ #(#bars)
]

{ #category : #generated }
RustLetStatementNode >> equalsToken [
	^ equalsToken
]

{ #category : #generated }
RustLetStatementNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustLetStatementNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	patterns := OrderedCollection new: 2.
	bars := OrderedCollection new: 2.
]

{ #category : #generated }
RustLetStatementNode >> letToken [
	^ letToken
]

{ #category : #generated }
RustLetStatementNode >> letToken: aSmaCCToken [
	letToken := aSmaCCToken
]

{ #category : #generated }
RustLetStatementNode >> nodeVariables [
	^ #(#value #type)
]

{ #category : #generated }
RustLetStatementNode >> patterns [
	^ patterns
]

{ #category : #generated }
RustLetStatementNode >> patterns: anOrderedCollection [
	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : #generated }
RustLetStatementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustLetStatementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustLetStatementNode >> tokenVariables [
	^ #(#letToken #semicolon #equalsToken #colon)
]

{ #category : #generated }
RustLetStatementNode >> type [
	^ type
]

{ #category : #generated }
RustLetStatementNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
RustLetStatementNode >> value [
	^ value
]

{ #category : #generated }
RustLetStatementNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
