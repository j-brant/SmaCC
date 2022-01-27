Class {
	#name : #TeradataDeleteQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'_deleteToken',
		'table',
		'where',
		'allToken',
		'fromToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataDeleteQueryNode >> _deleteToken [
	^ _deleteToken
]

{ #category : #generated }
TeradataDeleteQueryNode >> _deleteToken: aSmaCCToken [
	_deleteToken := aSmaCCToken
]

{ #category : #generated }
TeradataDeleteQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeleteQuery: self
]

{ #category : #generated }
TeradataDeleteQueryNode >> allToken [
	^ allToken
]

{ #category : #generated }
TeradataDeleteQueryNode >> allToken: aSmaCCToken [
	allToken := aSmaCCToken
]

{ #category : #generated }
TeradataDeleteQueryNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
TeradataDeleteQueryNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #generated }
TeradataDeleteQueryNode >> nodeVariables [
	^ #(#table #where)
]

{ #category : #generated }
TeradataDeleteQueryNode >> table [
	^ table
]

{ #category : #generated }
TeradataDeleteQueryNode >> table: aTeradataProgramNode [
	self table notNil ifTrue: [ self table parent: nil ].
	table := aTeradataProgramNode.
	self table notNil ifTrue: [ self table parent: self ]
]

{ #category : #generated }
TeradataDeleteQueryNode >> tokenVariables [
	^ #(#_deleteToken #allToken #fromToken)
]

{ #category : #generated }
TeradataDeleteQueryNode >> where [
	^ where
]

{ #category : #generated }
TeradataDeleteQueryNode >> where: aTeradataWhereExpressionNode [
	self where notNil ifTrue: [ self where parent: nil ].
	where := aTeradataWhereExpressionNode.
	self where notNil ifTrue: [ self where parent: self ]
]
