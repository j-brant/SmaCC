Class {
	#name : #RustCrateNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'attrs',
		'items',
		'shebang'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustCrateNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCrate: self
]

{ #category : #generated }
RustCrateNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustCrateNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustCrateNode >> compositeNodeVariables [
	^ #(#attrs #items)
]

{ #category : #'generated-initialize-release' }
RustCrateNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	items := OrderedCollection new: 2.
]

{ #category : #generated }
RustCrateNode >> items [
	^ items
]

{ #category : #generated }
RustCrateNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : #generated }
RustCrateNode >> shebang [
	^ shebang
]

{ #category : #generated }
RustCrateNode >> shebang: aSmaCCToken [
	shebang := aSmaCCToken
]

{ #category : #generated }
RustCrateNode >> tokenVariables [
	^ #(#shebang)
]
