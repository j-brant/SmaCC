Class {
	#name : #CPPCommaExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'commas',
		'rights'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPCommaExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCommaExpression: self
]

{ #category : #generated }
CPPCommaExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
CPPCommaExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPCommaExpressionNode >> compositeNodeVariables [
	^ #(#rights)
]

{ #category : #generated }
CPPCommaExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
CPPCommaExpressionNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	rights := OrderedCollection new: 2.
]

{ #category : #generated }
CPPCommaExpressionNode >> rights [
	^ rights
]

{ #category : #generated }
CPPCommaExpressionNode >> rights: anOrderedCollection [
	self setParents: self rights to: nil.
	rights := anOrderedCollection.
	self setParents: self rights to: self
]
