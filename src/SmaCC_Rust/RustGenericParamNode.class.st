Class {
	#name : #RustGenericParamNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'attrs',
		'param'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustGenericParamNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGenericParam: self
]

{ #category : #generated }
RustGenericParamNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustGenericParamNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustGenericParamNode >> compositeNodeVariables [
	^ #(#attrs)
]

{ #category : #'generated-initialize-release' }
RustGenericParamNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
]

{ #category : #generated }
RustGenericParamNode >> nodeVariables [
	^ #(#param)
]

{ #category : #generated }
RustGenericParamNode >> param [
	^ param
]

{ #category : #generated }
RustGenericParamNode >> param: aRustProgramNode [
	self param notNil ifTrue: [ self param parent: nil ].
	param := aRustProgramNode.
	self param notNil ifTrue: [ self param parent: self ]
]
