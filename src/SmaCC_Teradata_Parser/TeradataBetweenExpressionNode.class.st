Class {
	#name : #TeradataBetweenExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'betweenToken',
		'first',
		'andToken',
		'last',
		'notToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataBetweenExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBetweenExpression: self
]

{ #category : #generated }
TeradataBetweenExpressionNode >> andToken [
	^ andToken
]

{ #category : #generated }
TeradataBetweenExpressionNode >> andToken: aSmaCCToken [
	andToken := aSmaCCToken
]

{ #category : #generated }
TeradataBetweenExpressionNode >> betweenToken [
	^ betweenToken
]

{ #category : #generated }
TeradataBetweenExpressionNode >> betweenToken: aSmaCCToken [
	betweenToken := aSmaCCToken
]

{ #category : #generated }
TeradataBetweenExpressionNode >> first [
	^ first
]

{ #category : #generated }
TeradataBetweenExpressionNode >> first: aTeradataExpressionNode [
	self first notNil
		ifTrue: [ self first parent: nil ].
	first := aTeradataExpressionNode.
	self first notNil
		ifTrue: [ self first parent: self ]
]

{ #category : #generated }
TeradataBetweenExpressionNode >> last [
	^ last
]

{ #category : #generated }
TeradataBetweenExpressionNode >> last: aTeradataExpressionNode [
	self last notNil
		ifTrue: [ self last parent: nil ].
	last := aTeradataExpressionNode.
	self last notNil
		ifTrue: [ self last parent: self ]
]

{ #category : #generated }
TeradataBetweenExpressionNode >> nodeVariables [
	^ #(#value #first #last)
]

{ #category : #generated }
TeradataBetweenExpressionNode >> notToken [
	^ notToken
]

{ #category : #generated }
TeradataBetweenExpressionNode >> notToken: aSmaCCToken [
	notToken := aSmaCCToken
]

{ #category : #generated }
TeradataBetweenExpressionNode >> tokenVariables [
	^ #(#betweenToken #andToken #notToken)
]

{ #category : #generated }
TeradataBetweenExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataBetweenExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
