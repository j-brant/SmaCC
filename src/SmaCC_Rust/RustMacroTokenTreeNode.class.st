Class {
	#name : #RustMacroTokenTreeNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'left',
		'tokens',
		'right'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustMacroTokenTreeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMacroTokenTree: self
]

{ #category : #generated }
RustMacroTokenTreeNode >> compositeNodeVariables [
	^ #(#tokens)
]

{ #category : #'generated-initialize-release' }
RustMacroTokenTreeNode >> initialize [
	super initialize.
	tokens := OrderedCollection new: 2.
]

{ #category : #generated }
RustMacroTokenTreeNode >> left [
	^ left
]

{ #category : #generated }
RustMacroTokenTreeNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
RustMacroTokenTreeNode >> right [
	^ right
]

{ #category : #generated }
RustMacroTokenTreeNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
RustMacroTokenTreeNode >> tokenVariables [
	^ #(#left #right)
]

{ #category : #generated }
RustMacroTokenTreeNode >> tokens [
	^ tokens
]

{ #category : #generated }
RustMacroTokenTreeNode >> tokens: anOrderedCollection [
	self setParents: self tokens to: nil.
	tokens := anOrderedCollection.
	self setParents: self tokens to: self
]
