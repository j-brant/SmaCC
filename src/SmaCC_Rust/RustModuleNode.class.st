Class {
	#name : 'RustModuleNode',
	#superclass : 'RustItemNode',
	#instVars : [
		'modToken',
		'name',
		'semicolon',
		'leftBrace',
		'rightBrace',
		'items',
		'unsafeToken',
		'visibility'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustModuleNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitModule: self
]

{ #category : 'generated' }
RustModuleNode >> compositeNodeVariables [
	^ #(#items #attrs)
]

{ #category : 'generated-initialize-release' }
RustModuleNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
]

{ #category : 'generated' }
RustModuleNode >> items [
	^ items
]

{ #category : 'generated' }
RustModuleNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : 'generated' }
RustModuleNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
RustModuleNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
RustModuleNode >> modToken [
	^ modToken
]

{ #category : 'generated' }
RustModuleNode >> modToken: aSmaCCToken [
	modToken := aSmaCCToken
]

{ #category : 'generated' }
RustModuleNode >> name [
	^ name
]

{ #category : 'generated' }
RustModuleNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RustModuleNode >> nodeVariables [
	^ #(#visibility)
]

{ #category : 'generated' }
RustModuleNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
RustModuleNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
RustModuleNode >> semicolon [
	^ semicolon
]

{ #category : 'generated' }
RustModuleNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : 'generated' }
RustModuleNode >> tokenVariables [
	^ #(#modToken #name #semicolon #leftBrace #rightBrace #unsafeToken)
]

{ #category : 'generated' }
RustModuleNode >> unsafeToken [
	^ unsafeToken
]

{ #category : 'generated' }
RustModuleNode >> unsafeToken: aSmaCCToken [
	unsafeToken := aSmaCCToken
]

{ #category : 'generated' }
RustModuleNode >> visibility [
	^ visibility
]

{ #category : 'generated' }
RustModuleNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]
