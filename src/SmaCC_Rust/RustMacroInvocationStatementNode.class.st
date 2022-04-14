Class {
	#name : #RustMacroInvocationStatementNode,
	#superclass : #RustStatementNode,
	#instVars : [
		'macroInvocation',
		'semicolon'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustMacroInvocationStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMacroInvocationStatement: self
]

{ #category : #generated }
RustMacroInvocationStatementNode >> macroInvocation [
	^ macroInvocation
]

{ #category : #generated }
RustMacroInvocationStatementNode >> macroInvocation: aRustMacroInvocationNode [
	self macroInvocation notNil ifTrue: [ self macroInvocation parent: nil ].
	macroInvocation := aRustMacroInvocationNode.
	self macroInvocation notNil ifTrue: [ self macroInvocation parent: self ]
]

{ #category : #generated }
RustMacroInvocationStatementNode >> nodeVariables [
	^ #(#macroInvocation)
]

{ #category : #generated }
RustMacroInvocationStatementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustMacroInvocationStatementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustMacroInvocationStatementNode >> tokenVariables [
	^ #(#semicolon)
]
