Class {
	#name : #TeradataMinusQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'left',
		'minusToken',
		'leftParen',
		'right',
		'rightParen',
		'orderBy'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataMinusQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMinusQuery: self
]

{ #category : #generated }
TeradataMinusQueryNode >> left [
	^ left
]

{ #category : #generated }
TeradataMinusQueryNode >> left: aTeradataProgramNode [
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aTeradataProgramNode.
	self left notNil
		ifTrue: [ self left parent: self ]
]

{ #category : #generated }
TeradataMinusQueryNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataMinusQueryNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataMinusQueryNode >> minusToken [
	^ minusToken
]

{ #category : #generated }
TeradataMinusQueryNode >> minusToken: aSmaCCToken [
	minusToken := aSmaCCToken
]

{ #category : #generated }
TeradataMinusQueryNode >> nodeVariables [
	^ #(#left #right #orderBy)
]

{ #category : #generated }
TeradataMinusQueryNode >> orderBy [
	^ orderBy
]

{ #category : #generated }
TeradataMinusQueryNode >> orderBy: aTeradataOrderByExpressionNode [
	self orderBy notNil
		ifTrue: [ self orderBy parent: nil ].
	orderBy := aTeradataOrderByExpressionNode.
	self orderBy notNil
		ifTrue: [ self orderBy parent: self ]
]

{ #category : #generated }
TeradataMinusQueryNode >> right [
	^ right
]

{ #category : #generated }
TeradataMinusQueryNode >> right: aTeradataProgramNode [
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aTeradataProgramNode.
	self right notNil
		ifTrue: [ self right parent: self ]
]

{ #category : #generated }
TeradataMinusQueryNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataMinusQueryNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataMinusQueryNode >> tokenVariables [
	^ #(#minusToken #leftParen #rightParen)
]
