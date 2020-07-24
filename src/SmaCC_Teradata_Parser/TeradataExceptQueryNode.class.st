Class {
	#name : #TeradataExceptQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'left',
		'intersectToken',
		'leftParens',
		'right',
		'rightParens',
		'orderBy'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataExceptQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExceptQuery: self
]

{ #category : #generated }
TeradataExceptQueryNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
TeradataExceptQueryNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataExceptQueryNode >> intersectToken [
	^ intersectToken
]

{ #category : #generated }
TeradataExceptQueryNode >> intersectToken: aSmaCCToken [
	intersectToken := aSmaCCToken
]

{ #category : #generated }
TeradataExceptQueryNode >> left [
	^ left
]

{ #category : #generated }
TeradataExceptQueryNode >> left: aTeradataProgramNode [
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aTeradataProgramNode.
	self left notNil
		ifTrue: [ self left parent: self ]
]

{ #category : #generated }
TeradataExceptQueryNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
TeradataExceptQueryNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
TeradataExceptQueryNode >> nodeVariables [
	^ #(#left #right #orderBy)
]

{ #category : #generated }
TeradataExceptQueryNode >> orderBy [
	^ orderBy
]

{ #category : #generated }
TeradataExceptQueryNode >> orderBy: aTeradataOrderByExpressionNode [
	self orderBy notNil
		ifTrue: [ self orderBy parent: nil ].
	orderBy := aTeradataOrderByExpressionNode.
	self orderBy notNil
		ifTrue: [ self orderBy parent: self ]
]

{ #category : #generated }
TeradataExceptQueryNode >> right [
	^ right
]

{ #category : #generated }
TeradataExceptQueryNode >> right: aTeradataProgramNode [
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aTeradataProgramNode.
	self right notNil
		ifTrue: [ self right parent: self ]
]

{ #category : #generated }
TeradataExceptQueryNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
TeradataExceptQueryNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
TeradataExceptQueryNode >> tokenVariables [
	^ #(#intersectToken)
]
