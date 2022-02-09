Class {
	#name : #TeradataCharacterSetOptionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'characterToken',
		'setToken',
		'encoding'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCharacterSetOptionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCharacterSetOption: self
]

{ #category : #generated }
TeradataCharacterSetOptionNode >> characterToken [
	^ characterToken
]

{ #category : #generated }
TeradataCharacterSetOptionNode >> characterToken: aSmaCCToken [
	characterToken := aSmaCCToken
]

{ #category : #generated }
TeradataCharacterSetOptionNode >> encoding [
	^ encoding
]

{ #category : #generated }
TeradataCharacterSetOptionNode >> encoding: aSmaCCToken [
	encoding := aSmaCCToken
]

{ #category : #generated }
TeradataCharacterSetOptionNode >> setToken [
	^ setToken
]

{ #category : #generated }
TeradataCharacterSetOptionNode >> setToken: aSmaCCToken [
	setToken := aSmaCCToken
]

{ #category : #generated }
TeradataCharacterSetOptionNode >> tokenVariables [
	^ #(#characterToken #setToken #encoding)
]
