Class {
	#name : #RustEmptyStatementNode,
	#superclass : #RustStatementNode,
	#instVars : [
		'semicolon'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustEmptyStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEmptyStatement: self
]

{ #category : #generated }
RustEmptyStatementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
RustEmptyStatementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
RustEmptyStatementNode >> tokenVariables [
	^ #(#semicolon)
]
