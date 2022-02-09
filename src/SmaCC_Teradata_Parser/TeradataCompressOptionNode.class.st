Class {
	#name : #TeradataCompressOptionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'compressToken',
		'compress'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCompressOptionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCompressOption: self
]

{ #category : #generated }
TeradataCompressOptionNode >> compress [
	^ compress
]

{ #category : #generated }
TeradataCompressOptionNode >> compress: aSmaCCToken [
	compress := aSmaCCToken
]

{ #category : #generated }
TeradataCompressOptionNode >> compressToken [
	^ compressToken
]

{ #category : #generated }
TeradataCompressOptionNode >> compressToken: aSmaCCToken [
	compressToken := aSmaCCToken
]

{ #category : #generated }
TeradataCompressOptionNode >> tokenVariables [
	^ #(#compressToken #compress)
]
