Class {
	#name : #TeradataUsingColumnNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'name',
		'type',
		'leftParen',
		'rightParen'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataUsingColumnNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUsingColumn: self
]

{ #category : #generated }
TeradataUsingColumnNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataUsingColumnNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataUsingColumnNode >> name [
	^ name
]

{ #category : #generated }
TeradataUsingColumnNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataUsingColumnNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
TeradataUsingColumnNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataUsingColumnNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataUsingColumnNode >> tokenVariables [
	^ #(#name #leftParen #rightParen)
]

{ #category : #generated }
TeradataUsingColumnNode >> type [
	^ type
]

{ #category : #generated }
TeradataUsingColumnNode >> type: aTeradataTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aTeradataTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
