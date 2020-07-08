Class {
	#name : #TeradataSelectTableNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'leftParen',
		'query',
		'rightParen',
		'alias',
		'asToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataSelectTableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSelectTable: self
]

{ #category : #generated }
TeradataSelectTableNode >> alias [
	^ alias
]

{ #category : #generated }
TeradataSelectTableNode >> alias: aSmaCCToken [
	alias := aSmaCCToken
]

{ #category : #generated }
TeradataSelectTableNode >> asToken [
	^ asToken
]

{ #category : #generated }
TeradataSelectTableNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
TeradataSelectTableNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
TeradataSelectTableNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
TeradataSelectTableNode >> nodeVariables [
	^ #(#query)
]

{ #category : #generated }
TeradataSelectTableNode >> query [
	^ query
]

{ #category : #generated }
TeradataSelectTableNode >> query: aTeradataProgramNode [
	self query notNil
		ifTrue: [ self query parent: nil ].
	query := aTeradataProgramNode.
	self query notNil
		ifTrue: [ self query parent: self ]
]

{ #category : #generated }
TeradataSelectTableNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
TeradataSelectTableNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
TeradataSelectTableNode >> tokenVariables [
	^ #(#leftParen #rightParen #alias #asToken)
]
