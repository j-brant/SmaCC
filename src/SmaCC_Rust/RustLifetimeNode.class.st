Class {
	#name : #RustLifetimeNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'lifetime'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustLifetimeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLifetime: self
]

{ #category : #generated }
RustLifetimeNode >> lifetime [
	^ lifetime
]

{ #category : #generated }
RustLifetimeNode >> lifetime: aSmaCCToken [
	lifetime := aSmaCCToken
]

{ #category : #generated }
RustLifetimeNode >> tokenVariables [
	^ #(#lifetime)
]
