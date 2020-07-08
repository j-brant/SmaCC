Class {
	#name : #TeradataBinaryExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'left',
		'operator',
		'right'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataBinaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBinaryExpression: self
]

{ #category : #generated }
TeradataBinaryExpressionNode >> left [
	^ left
]

{ #category : #generated }
TeradataBinaryExpressionNode >> left: aTeradataExpressionNode [
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aTeradataExpressionNode.
	self left notNil
		ifTrue: [ self left parent: self ]
]

{ #category : #generated }
TeradataBinaryExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
TeradataBinaryExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
TeradataBinaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
TeradataBinaryExpressionNode >> right [
	^ right
]

{ #category : #generated }
TeradataBinaryExpressionNode >> right: aTeradataExpressionNode [
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aTeradataExpressionNode.
	self right notNil
		ifTrue: [ self right parent: self ]
]

{ #category : #generated }
TeradataBinaryExpressionNode >> tokenVariables [
	^ #(#operator)
]
