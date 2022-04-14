Class {
	#name : #RustMacroInvocationNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'name',
		'bang',
		'left',
		'tokens',
		'right'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustMacroInvocationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMacroInvocation: self
]

{ #category : #generated }
RustMacroInvocationNode >> bang [
	^ bang
]

{ #category : #generated }
RustMacroInvocationNode >> bang: aSmaCCToken [
	bang := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustMacroInvocationNode >> initialize [
	super initialize.
	tokens := OrderedCollection new: 2.
]

{ #category : #generated }
RustMacroInvocationNode >> left [
	^ left
]

{ #category : #generated }
RustMacroInvocationNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
RustMacroInvocationNode >> name [
	^ name
]

{ #category : #generated }
RustMacroInvocationNode >> name: aRustPathNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aRustPathNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
RustMacroInvocationNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
RustMacroInvocationNode >> otherVariables [
	^ #(#tokens)
]

{ #category : #generated }
RustMacroInvocationNode >> right [
	^ right
]

{ #category : #generated }
RustMacroInvocationNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
RustMacroInvocationNode >> tokenVariables [
	^ #(#bang #left #right)
]

{ #category : #generated }
RustMacroInvocationNode >> tokens [
	^ tokens
]

{ #category : #generated }
RustMacroInvocationNode >> tokens: anOrderedCollection [
	self setParent: self tokens to: nil.
	tokens := anOrderedCollection.
	self setParent: self tokens to: self
]
