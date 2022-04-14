Class {
	#name : #RustModuleNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'modToken',
		'name',
		'semicolon',
		'leftBrace',
		'attrs',
		'items',
		'rightBrace',
		'unsafeToken',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustModuleNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitModule: self
]

{ #category : #generated }
RustModuleNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustModuleNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustModuleNode >> compositeNodeVariables [
	^ #(#attrs #items)
]

{ #category : #'generated-initialize-release' }
RustModuleNode >> initialize [
	super initialize.
	attrs := OrderedCollection new: 2.
	items := OrderedCollection new: 2.
]

{ #category : #generated }
RustModuleNode >> items [
	^ items
]

{ #category : #generated }
RustModuleNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : #generated }
RustModuleNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RustModuleNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RustModuleNode >> modToken [
	^ modToken
]

{ #category : #generated }
RustModuleNode >> modToken: aSmaCCToken [
	modToken := aSmaCCToken
]

{ #category : #generated }
RustModuleNode >> name [
	^ name
]

{ #category : #generated }
RustModuleNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustModuleNode >> nodeVariables [
	^ #(#visibility)
]

{ #category : #generated }
RustModuleNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RustModuleNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RustModuleNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustModuleNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustModuleNode >> tokenVariables [
	^ #(#modToken #name #semicolon #leftBrace #rightBrace #unsafeToken)
]

{ #category : #generated }
RustModuleNode >> unsafeToken [
	^ unsafeToken
]

{ #category : #generated }
RustModuleNode >> unsafeToken: aSmaCCToken [
	unsafeToken := aSmaCCToken
]

{ #category : #generated }
RustModuleNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustModuleNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]
