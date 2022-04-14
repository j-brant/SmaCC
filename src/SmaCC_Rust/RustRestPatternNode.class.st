Class {
	#name : #RustRestPatternNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'operator'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustRestPatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRestPattern: self
]

{ #category : #generated }
RustRestPatternNode >> operator [
	^ operator
]

{ #category : #generated }
RustRestPatternNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
RustRestPatternNode >> tokenVariables [
	^ #(#operator)
]
