Class {
	#name : 'RustGenericArgBindingNode',
	#superclass : 'RustProgramNode',
	#instVars : [
		'name',
		'equalsToken',
		'type',
		'genericArgs'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustGenericArgBindingNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGenericArgBinding: self
]

{ #category : 'generated' }
RustGenericArgBindingNode >> equalsToken [
	^ equalsToken
]

{ #category : 'generated' }
RustGenericArgBindingNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : 'generated' }
RustGenericArgBindingNode >> genericArgs [
	^ genericArgs
]

{ #category : 'generated' }
RustGenericArgBindingNode >> genericArgs: aRustGenericArgsNode [
	self genericArgs notNil ifTrue: [ self genericArgs parent: nil ].
	genericArgs := aRustGenericArgsNode.
	self genericArgs notNil ifTrue: [ self genericArgs parent: self ]
]

{ #category : 'generated' }
RustGenericArgBindingNode >> name [
	^ name
]

{ #category : 'generated' }
RustGenericArgBindingNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RustGenericArgBindingNode >> nodeVariables [
	^ #(#type #genericArgs)
]

{ #category : 'generated' }
RustGenericArgBindingNode >> tokenVariables [
	^ #(#name #equalsToken)
]

{ #category : 'generated' }
RustGenericArgBindingNode >> type [
	^ type
]

{ #category : 'generated' }
RustGenericArgBindingNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]
