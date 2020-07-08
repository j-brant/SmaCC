Class {
	#name : #TeradataInQueryExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'values',
		'inToken',
		'query',
		'notToken',
		'commas'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataInQueryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInQueryExpression: self
]

{ #category : #generated }
TeradataInQueryExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataInQueryExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataInQueryExpressionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataInQueryExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #generated }
TeradataInQueryExpressionNode >> inToken [
	^ inToken
]

{ #category : #generated }
TeradataInQueryExpressionNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataInQueryExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataInQueryExpressionNode >> nodeVariables [
	^ #(#query)
]

{ #category : #generated }
TeradataInQueryExpressionNode >> notToken [
	^ notToken
]

{ #category : #generated }
TeradataInQueryExpressionNode >> notToken: aSmaCCToken [
	notToken := aSmaCCToken
]

{ #category : #generated }
TeradataInQueryExpressionNode >> query [
	^ query
]

{ #category : #generated }
TeradataInQueryExpressionNode >> query: aTeradataProgramNode [
	self query notNil
		ifTrue: [ self query parent: nil ].
	query := aTeradataProgramNode.
	self query notNil
		ifTrue: [ self query parent: self ]
]

{ #category : #generated }
TeradataInQueryExpressionNode >> tokenVariables [
	^ #(#inToken #notToken)
]

{ #category : #generated }
TeradataInQueryExpressionNode >> values [
	^ values
]

{ #category : #generated }
TeradataInQueryExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
