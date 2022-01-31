Class {
	#name : #TeradataExpressionListNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'values',
		'commas'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataExpressionListNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpressionList: self
]

{ #category : #generated }
TeradataExpressionListNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataExpressionListNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataExpressionListNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
TeradataExpressionListNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
TeradataExpressionListNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataExpressionListNode >> values [
	^ values
]

{ #category : #generated }
TeradataExpressionListNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
