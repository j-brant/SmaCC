Class {
	#name : #RustAttributedMacroInvocationNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'attrs',
		'macro'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustAttributedMacroInvocationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttributedMacroInvocation: self
]

{ #category : #generated }
RustAttributedMacroInvocationNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustAttributedMacroInvocationNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustAttributedMacroInvocationNode >> compositeNodeVariables [
	^ #(#attrs)
]

{ #category : #'generated-initialize-release' }
RustAttributedMacroInvocationNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
]

{ #category : #generated }
RustAttributedMacroInvocationNode >> macro [
	^ macro
]

{ #category : #generated }
RustAttributedMacroInvocationNode >> macro: aRustMacroInvocationStatementNode [
	self macro notNil ifTrue: [ self macro parent: nil ].
	macro := aRustMacroInvocationStatementNode.
	self macro notNil ifTrue: [ self macro parent: self ]
]

{ #category : #generated }
RustAttributedMacroInvocationNode >> nodeVariables [
	^ #(#macro)
]
