Class {
	#name : #RustExternCrateNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'externToken',
		'crateToken',
		'crate',
		'semicolon',
		'asToken',
		'name',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustExternCrateNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExternCrate: self
]

{ #category : #generated }
RustExternCrateNode >> asToken [
	^ asToken
]

{ #category : #generated }
RustExternCrateNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
RustExternCrateNode >> crate [
	^ crate
]

{ #category : #generated }
RustExternCrateNode >> crate: aSmaCCToken [
	crate := aSmaCCToken
]

{ #category : #generated }
RustExternCrateNode >> crateToken [
	^ crateToken
]

{ #category : #generated }
RustExternCrateNode >> crateToken: aSmaCCToken [
	crateToken := aSmaCCToken
]

{ #category : #generated }
RustExternCrateNode >> externToken [
	^ externToken
]

{ #category : #generated }
RustExternCrateNode >> externToken: aSmaCCToken [
	externToken := aSmaCCToken
]

{ #category : #generated }
RustExternCrateNode >> name [
	^ name
]

{ #category : #generated }
RustExternCrateNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustExternCrateNode >> nodeVariables [
	^ #(#visibility)
]

{ #category : #generated }
RustExternCrateNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustExternCrateNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustExternCrateNode >> tokenVariables [
	^ #(#externToken #crateToken #crate #semicolon #asToken #name)
]

{ #category : #generated }
RustExternCrateNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustExternCrateNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]
