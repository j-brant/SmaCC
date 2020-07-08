Class {
	#name : #TeradataOrderByExpressionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'orderToken',
		'byToken',
		'values',
		'commas'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataOrderByExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOrderByExpression: self
]

{ #category : #generated }
TeradataOrderByExpressionNode >> byToken [
	^ byToken
]

{ #category : #generated }
TeradataOrderByExpressionNode >> byToken: aSmaCCToken [
	byToken := aSmaCCToken
]

{ #category : #generated }
TeradataOrderByExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataOrderByExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataOrderByExpressionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataOrderByExpressionNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
TeradataOrderByExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataOrderByExpressionNode >> orderToken [
	^ orderToken
]

{ #category : #generated }
TeradataOrderByExpressionNode >> orderToken: aSmaCCToken [
	orderToken := aSmaCCToken
]

{ #category : #generated }
TeradataOrderByExpressionNode >> tokenVariables [
	^ #(#orderToken #byToken)
]

{ #category : #generated }
TeradataOrderByExpressionNode >> values [
	^ values
]

{ #category : #generated }
TeradataOrderByExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
