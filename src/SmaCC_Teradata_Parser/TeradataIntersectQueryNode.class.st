Class {
	#name : #TeradataIntersectQueryNode,
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
TeradataIntersectQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIntersectQuery: self
]

{ #category : #generated }
TeradataIntersectQueryNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
TeradataIntersectQueryNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataIntersectQueryNode >> intersectToken [
	^ intersectToken
]

{ #category : #generated }
TeradataIntersectQueryNode >> intersectToken: aSmaCCToken [
	intersectToken := aSmaCCToken
]

{ #category : #generated }
TeradataIntersectQueryNode >> left [
	^ left
]

{ #category : #generated }
TeradataIntersectQueryNode >> left: aTeradataProgramNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aTeradataProgramNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : #generated }
TeradataIntersectQueryNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
TeradataIntersectQueryNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
TeradataIntersectQueryNode >> nodeVariables [
	^ #(#left #right #orderBy)
]

{ #category : #generated }
TeradataIntersectQueryNode >> orderBy [
	^ orderBy
]

{ #category : #generated }
TeradataIntersectQueryNode >> orderBy: aTeradataOrderByExpressionNode [
	self orderBy notNil ifTrue: [ self orderBy parent: nil ].
	orderBy := aTeradataOrderByExpressionNode.
	self orderBy notNil ifTrue: [ self orderBy parent: self ]
]

{ #category : #generated }
TeradataIntersectQueryNode >> right [
	^ right
]

{ #category : #generated }
TeradataIntersectQueryNode >> right: aTeradataProgramNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aTeradataProgramNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : #generated }
TeradataIntersectQueryNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
TeradataIntersectQueryNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
TeradataIntersectQueryNode >> tokenVariables [
	^ #(#intersectToken)
]
