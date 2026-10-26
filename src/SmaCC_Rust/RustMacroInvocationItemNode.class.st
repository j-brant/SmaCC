Class {
	#name : 'RustMacroInvocationItemNode',
	#superclass : 'RustItemNode',
	#instVars : [
		'macroInvocation',
		'semicolon'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustMacroInvocationItemNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMacroInvocationItem: self
]

{ #category : 'generated' }
RustMacroInvocationItemNode >> macroInvocation [
	^ macroInvocation
]

{ #category : 'generated' }
RustMacroInvocationItemNode >> macroInvocation: aRustMacroInvocationNode [
	self macroInvocation notNil ifTrue: [ self macroInvocation parent: nil ].
	macroInvocation := aRustMacroInvocationNode.
	self macroInvocation notNil ifTrue: [ self macroInvocation parent: self ]
]

{ #category : 'generated' }
RustMacroInvocationItemNode >> nodeVariables [
	^ #(#macroInvocation)
]

{ #category : 'generated' }
RustMacroInvocationItemNode >> semicolon [
	^ semicolon
]

{ #category : 'generated' }
RustMacroInvocationItemNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : 'generated' }
RustMacroInvocationItemNode >> tokenVariables [
	^ #(#semicolon)
]
