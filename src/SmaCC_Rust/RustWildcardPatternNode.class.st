Class {
	#name : #RustWildcardPatternNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'underscore'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustWildcardPatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWildcardPattern: self
]

{ #category : #generated }
RustWildcardPatternNode >> tokenVariables [
	^ #(#underscore)
]

{ #category : #generated }
RustWildcardPatternNode >> underscore [
	^ underscore
]

{ #category : #generated }
RustWildcardPatternNode >> underscore: aSmaCCToken [
	underscore := aSmaCCToken
]
