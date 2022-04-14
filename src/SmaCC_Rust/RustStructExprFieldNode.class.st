Class {
	#name : #RustStructExprFieldNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'attrs',
		'name',
		'colon',
		'value'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustStructExprFieldNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStructExprField: self
]

{ #category : #generated }
RustStructExprFieldNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustStructExprFieldNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustStructExprFieldNode >> colon [
	^ colon
]

{ #category : #generated }
RustStructExprFieldNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustStructExprFieldNode >> compositeNodeVariables [
	^ #(#attrs)
]

{ #category : #'generated-initialize-release' }
RustStructExprFieldNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
]

{ #category : #generated }
RustStructExprFieldNode >> name [
	^ name
]

{ #category : #generated }
RustStructExprFieldNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustStructExprFieldNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
RustStructExprFieldNode >> tokenVariables [
	^ #(#name #colon)
]

{ #category : #generated }
RustStructExprFieldNode >> value [
	^ value
]

{ #category : #generated }
RustStructExprFieldNode >> value: aRustExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
