Class {
	#name : #TeradataTableNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'name',
		'alias',
		'asToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataTableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTable: self
]

{ #category : #generated }
TeradataTableNode >> alias [
	^ alias
]

{ #category : #generated }
TeradataTableNode >> alias: aSmaCCToken [
	alias := aSmaCCToken
]

{ #category : #generated }
TeradataTableNode >> asToken [
	^ asToken
]

{ #category : #generated }
TeradataTableNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
TeradataTableNode >> name [
	^ name
]

{ #category : #generated }
TeradataTableNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataTableNode >> tokenVariables [
	^ #(#name #alias #asToken)
]
