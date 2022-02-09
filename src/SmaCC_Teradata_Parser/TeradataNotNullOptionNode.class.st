Class {
	#name : #TeradataNotNullOptionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'notToken',
		'nullToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataNotNullOptionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNotNullOption: self
]

{ #category : #generated }
TeradataNotNullOptionNode >> notToken [
	^ notToken
]

{ #category : #generated }
TeradataNotNullOptionNode >> notToken: aSmaCCToken [
	notToken := aSmaCCToken
]

{ #category : #generated }
TeradataNotNullOptionNode >> nullToken [
	^ nullToken
]

{ #category : #generated }
TeradataNotNullOptionNode >> nullToken: aSmaCCToken [
	nullToken := aSmaCCToken
]

{ #category : #generated }
TeradataNotNullOptionNode >> tokenVariables [
	^ #(#notToken #nullToken)
]
