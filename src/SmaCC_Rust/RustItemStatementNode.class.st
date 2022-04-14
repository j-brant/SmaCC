Class {
	#name : #RustItemStatementNode,
	#superclass : #RustStatementNode,
	#instVars : [
		'attrs',
		'item'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustItemStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitItemStatement: self
]

{ #category : #generated }
RustItemStatementNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustItemStatementNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustItemStatementNode >> compositeNodeVariables [
	^ #(#attrs)
]

{ #category : #'generated-initialize-release' }
RustItemStatementNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
]

{ #category : #generated }
RustItemStatementNode >> item [
	^ item
]

{ #category : #generated }
RustItemStatementNode >> item: aRustProgramNode [
	self item notNil ifTrue: [ self item parent: nil ].
	item := aRustProgramNode.
	self item notNil ifTrue: [ self item parent: self ]
]

{ #category : #generated }
RustItemStatementNode >> nodeVariables [
	^ #(#item)
]
