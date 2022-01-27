Class {
	#name : #TeradataInValueExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'testValue',
		'inToken',
		'values',
		'commas',
		'notToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataInValueExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInValueExpression: self
]

{ #category : #generated }
TeradataInValueExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataInValueExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataInValueExpressionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataInValueExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #generated }
TeradataInValueExpressionNode >> inToken [
	^ inToken
]

{ #category : #generated }
TeradataInValueExpressionNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataInValueExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataInValueExpressionNode >> nodeVariables [
	^ #(#testValue)
]

{ #category : #generated }
TeradataInValueExpressionNode >> notToken [
	^ notToken
]

{ #category : #generated }
TeradataInValueExpressionNode >> notToken: aSmaCCToken [
	notToken := aSmaCCToken
]

{ #category : #generated }
TeradataInValueExpressionNode >> testValue [
	^ testValue
]

{ #category : #generated }
TeradataInValueExpressionNode >> testValue: aTeradataExpressionNode [
	self testValue notNil ifTrue: [ self testValue parent: nil ].
	testValue := aTeradataExpressionNode.
	self testValue notNil ifTrue: [ self testValue parent: self ]
]

{ #category : #generated }
TeradataInValueExpressionNode >> tokenVariables [
	^ #(#inToken #notToken)
]

{ #category : #generated }
TeradataInValueExpressionNode >> values [
	^ values
]

{ #category : #generated }
TeradataInValueExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
