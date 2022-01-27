Class {
	#name : #TeradataUnionQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'left',
		'unionToken',
		'leftParens',
		'right',
		'rightParens',
		'orderBy',
		'allToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataUnionQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnionQuery: self
]

{ #category : #generated }
TeradataUnionQueryNode >> allToken [
	^ allToken
]

{ #category : #generated }
TeradataUnionQueryNode >> allToken: aSmaCCToken [
	allToken := aSmaCCToken
]

{ #category : #generated }
TeradataUnionQueryNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
TeradataUnionQueryNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataUnionQueryNode >> left [
	^ left
]

{ #category : #generated }
TeradataUnionQueryNode >> left: aTeradataProgramNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aTeradataProgramNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : #generated }
TeradataUnionQueryNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
TeradataUnionQueryNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
TeradataUnionQueryNode >> nodeVariables [
	^ #(#left #right #orderBy)
]

{ #category : #generated }
TeradataUnionQueryNode >> orderBy [
	^ orderBy
]

{ #category : #generated }
TeradataUnionQueryNode >> orderBy: aTeradataOrderByExpressionNode [
	self orderBy notNil ifTrue: [ self orderBy parent: nil ].
	orderBy := aTeradataOrderByExpressionNode.
	self orderBy notNil ifTrue: [ self orderBy parent: self ]
]

{ #category : #generated }
TeradataUnionQueryNode >> right [
	^ right
]

{ #category : #generated }
TeradataUnionQueryNode >> right: aTeradataProgramNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aTeradataProgramNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : #generated }
TeradataUnionQueryNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
TeradataUnionQueryNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
TeradataUnionQueryNode >> tokenVariables [
	^ #(#unionToken #allToken)
]

{ #category : #generated }
TeradataUnionQueryNode >> unionToken [
	^ unionToken
]

{ #category : #generated }
TeradataUnionQueryNode >> unionToken: aSmaCCToken [
	unionToken := aSmaCCToken
]
