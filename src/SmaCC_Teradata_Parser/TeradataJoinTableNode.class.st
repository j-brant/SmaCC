Class {
	#name : #TeradataJoinTableNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'left',
		'joinToken',
		'right',
		'onToken',
		'on',
		'direction',
		'type',
		'leftParen',
		'rightParen'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataJoinTableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitJoinTable: self
]

{ #category : #generated }
TeradataJoinTableNode >> direction [
	^ direction
]

{ #category : #generated }
TeradataJoinTableNode >> direction: aSmaCCToken [
	direction := aSmaCCToken
]

{ #category : #generated }
TeradataJoinTableNode >> joinToken [
	^ joinToken
]

{ #category : #generated }
TeradataJoinTableNode >> joinToken: aSmaCCToken [
	joinToken := aSmaCCToken
]

{ #category : #generated }
TeradataJoinTableNode >> left [
	^ left
]

{ #category : #generated }
TeradataJoinTableNode >> left: aTeradataProgramNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aTeradataProgramNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : #generated }
TeradataJoinTableNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataJoinTableNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataJoinTableNode >> nodeVariables [
	^ #(#left #right #on)
]

{ #category : #generated }
TeradataJoinTableNode >> on [
	^ on
]

{ #category : #generated }
TeradataJoinTableNode >> on: aTeradataExpressionNode [
	self on notNil ifTrue: [ self on parent: nil ].
	on := aTeradataExpressionNode.
	self on notNil ifTrue: [ self on parent: self ]
]

{ #category : #generated }
TeradataJoinTableNode >> onToken [
	^ onToken
]

{ #category : #generated }
TeradataJoinTableNode >> onToken: aSmaCCToken [
	onToken := aSmaCCToken
]

{ #category : #generated }
TeradataJoinTableNode >> right [
	^ right
]

{ #category : #generated }
TeradataJoinTableNode >> right: aTeradataProgramNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aTeradataProgramNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : #generated }
TeradataJoinTableNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataJoinTableNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataJoinTableNode >> tokenVariables [
	^ #(#joinToken #onToken #direction #type #leftParen #rightParen)
]

{ #category : #generated }
TeradataJoinTableNode >> type [
	^ type
]

{ #category : #generated }
TeradataJoinTableNode >> type: aSmaCCToken [
	type := aSmaCCToken
]
