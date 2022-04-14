Class {
	#name : #RustInferredTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'underscore'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustInferredTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInferredType: self
]

{ #category : #generated }
RustInferredTypeNode >> tokenVariables [
	^ #(#underscore)
]

{ #category : #generated }
RustInferredTypeNode >> underscore [
	^ underscore
]

{ #category : #generated }
RustInferredTypeNode >> underscore: aSmaCCToken [
	underscore := aSmaCCToken
]
