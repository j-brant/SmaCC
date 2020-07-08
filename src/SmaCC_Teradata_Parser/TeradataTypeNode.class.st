Class {
	#name : #TeradataTypeNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'name',
		'leftParen',
		'precision',
		'rightParen',
		'comma',
		'scale'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitType: self
]

{ #category : #generated }
TeradataTypeNode >> comma [
	^ comma
]

{ #category : #generated }
TeradataTypeNode >> comma: aSmaCCToken [
	comma := aSmaCCToken
]

{ #category : #generated }
TeradataTypeNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataTypeNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataTypeNode >> name [
	^ name
]

{ #category : #generated }
TeradataTypeNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataTypeNode >> precision [
	^ precision
]

{ #category : #generated }
TeradataTypeNode >> precision: aSmaCCToken [
	precision := aSmaCCToken
]

{ #category : #generated }
TeradataTypeNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataTypeNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataTypeNode >> scale [
	^ scale
]

{ #category : #generated }
TeradataTypeNode >> scale: aSmaCCToken [
	scale := aSmaCCToken
]

{ #category : #generated }
TeradataTypeNode >> tokenVariables [
	^ #(#name #leftParen #precision #rightParen #comma #scale)
]
