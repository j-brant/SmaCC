Class {
	#name : #RustUseDeclarationNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'useToken',
		'use',
		'semicolon',
		'visibility'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustUseDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUseDeclaration: self
]

{ #category : #generated }
RustUseDeclarationNode >> nodeVariables [
	^ #(#use #visibility)
]

{ #category : #generated }
RustUseDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustUseDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustUseDeclarationNode >> tokenVariables [
	^ #(#useToken #semicolon)
]

{ #category : #generated }
RustUseDeclarationNode >> use [
	^ use
]

{ #category : #generated }
RustUseDeclarationNode >> use: aRustUseTreeNode [
	self use notNil ifTrue: [ self use parent: nil ].
	use := aRustUseTreeNode.
	self use notNil ifTrue: [ self use parent: self ]
]

{ #category : #generated }
RustUseDeclarationNode >> useToken [
	^ useToken
]

{ #category : #generated }
RustUseDeclarationNode >> useToken: aSmaCCToken [
	useToken := aSmaCCToken
]

{ #category : #generated }
RustUseDeclarationNode >> visibility [
	^ visibility
]

{ #category : #generated }
RustUseDeclarationNode >> visibility: aRustVisibilityNode [
	self visibility notNil ifTrue: [ self visibility parent: nil ].
	visibility := aRustVisibilityNode.
	self visibility notNil ifTrue: [ self visibility parent: self ]
]
