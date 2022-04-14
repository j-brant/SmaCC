Class {
	#name : #RustNeverTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'bang'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustNeverTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNeverType: self
]

{ #category : #generated }
RustNeverTypeNode >> bang [
	^ bang
]

{ #category : #generated }
RustNeverTypeNode >> bang: aSmaCCToken [
	bang := aSmaCCToken
]

{ #category : #generated }
RustNeverTypeNode >> tokenVariables [
	^ #(#bang)
]
