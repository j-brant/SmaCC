Class {
	#name : 'RustExternBlockNode',
	#superclass : 'RustItemNode',
	#instVars : [
		'externToken',
		'leftBrace',
		'rightBrace',
		'items',
		'abi',
		'unsafeToken',
		'visibility'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustExternBlockNode >> abi [
	^ abi
]

{ #category : 'generated' }
RustExternBlockNode >> abi: aSmaCCToken [
	abi := aSmaCCToken
]

{ #category : 'generated' }
RustExternBlockNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExternBlock: self
]

{ #category : 'generated' }
RustExternBlockNode >> compositeNodeVariables [
	^ #(#items #attrs)
]

{ #category : 'generated' }
RustExternBlockNode >> externToken [
	^ externToken
]

{ #category : 'generated' }
RustExternBlockNode >> externToken: aSmaCCToken [
	externToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
RustExternBlockNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
]

{ #category : 'generated' }
RustExternBlockNode >> items [
	^ items
]

{ #category : 'generated' }
RustExternBlockNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : 'generated' }
RustExternBlockNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
RustExternBlockNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
RustExternBlockNode >> nodeVariables [
	^ #(#visibility)
]

{ #category : 'generated' }
RustExternBlockNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
RustExternBlockNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
RustExternBlockNode >> tokenVariables [
	^ #(#externToken #leftBrace #rightBrace #abi #unsafeToken)
]

{ #category : 'generated' }
RustExternBlockNode >> unsafeToken [
	^ unsafeToken
]

{ #category : 'generated' }
RustExternBlockNode >> unsafeToken: aSmaCCToken [
	unsafeToken := aSmaCCToken
]

{ #category : 'generated' }
RustExternBlockNode >> visibility [
	^ visibility
]

{ #category : 'generated' }
RustExternBlockNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]
