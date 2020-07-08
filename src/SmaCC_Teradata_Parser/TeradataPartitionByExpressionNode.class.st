Class {
	#name : #TeradataPartitionByExpressionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'partitionToken',
		'byToken',
		'values',
		'commas'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataPartitionByExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPartitionByExpression: self
]

{ #category : #generated }
TeradataPartitionByExpressionNode >> byToken [
	^ byToken
]

{ #category : #generated }
TeradataPartitionByExpressionNode >> byToken: aSmaCCToken [
	byToken := aSmaCCToken
]

{ #category : #generated }
TeradataPartitionByExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataPartitionByExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataPartitionByExpressionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataPartitionByExpressionNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
TeradataPartitionByExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataPartitionByExpressionNode >> partitionToken [
	^ partitionToken
]

{ #category : #generated }
TeradataPartitionByExpressionNode >> partitionToken: aSmaCCToken [
	partitionToken := aSmaCCToken
]

{ #category : #generated }
TeradataPartitionByExpressionNode >> tokenVariables [
	^ #(#partitionToken #byToken)
]

{ #category : #generated }
TeradataPartitionByExpressionNode >> values [
	^ values
]

{ #category : #generated }
TeradataPartitionByExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
