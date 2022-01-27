Class {
	#name : #TeradataMinusQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'left',
		'minusToken',
		'leftParens',
		'right',
		'rightParens',
		'orderBy'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataMinusQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMinusQuery: self
]

{ #category : #generated }
TeradataMinusQueryNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
TeradataMinusQueryNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataMinusQueryNode >> left [
	^ left
]

{ #category : #generated }
TeradataMinusQueryNode >> left: aTeradataProgramNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aTeradataProgramNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : #generated }
TeradataMinusQueryNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
TeradataMinusQueryNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
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
	self orderBy notNil ifTrue: [ self orderBy parent: nil ].
	orderBy := aTeradataOrderByExpressionNode.
	self orderBy notNil ifTrue: [ self orderBy parent: self ]
]

{ #category : #generated }
TeradataMinusQueryNode >> right [
	^ right
]

{ #category : #generated }
TeradataMinusQueryNode >> right: aTeradataProgramNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aTeradataProgramNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : #generated }
TeradataMinusQueryNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
TeradataMinusQueryNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
TeradataMinusQueryNode >> tokenVariables [
	^ #(#minusToken)
]
