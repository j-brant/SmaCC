Class {
	#name : #TeradataFormatOptionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'formatToken',
		'format'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataFormatOptionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFormatOption: self
]

{ #category : #generated }
TeradataFormatOptionNode >> format [
	^ format
]

{ #category : #generated }
TeradataFormatOptionNode >> format: aSmaCCToken [
	format := aSmaCCToken
]

{ #category : #generated }
TeradataFormatOptionNode >> formatToken [
	^ formatToken
]

{ #category : #generated }
TeradataFormatOptionNode >> formatToken: aSmaCCToken [
	formatToken := aSmaCCToken
]

{ #category : #generated }
TeradataFormatOptionNode >> tokenVariables [
	^ #(#formatToken #format)
]
