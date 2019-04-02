Class {
	#name : #CPPNoexceptExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'noexceptToken',
		'commas',
		'rights'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPNoexceptExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNoexceptExpression: self
]

{ #category : #generated }
CPPNoexceptExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
CPPNoexceptExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPNoexceptExpressionNode >> compositeNodeVariables [
	^ #(#rights)
]

{ #category : #generated }
CPPNoexceptExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
CPPNoexceptExpressionNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
	rights := OrderedCollection new: 2.
]

{ #category : #generated }
CPPNoexceptExpressionNode >> noexceptToken [
	^ noexceptToken
]

{ #category : #generated }
CPPNoexceptExpressionNode >> noexceptToken: aSmaCCToken [
	noexceptToken := aSmaCCToken
]

{ #category : #generated }
CPPNoexceptExpressionNode >> rights [
	^ rights
]

{ #category : #generated }
CPPNoexceptExpressionNode >> rights: anOrderedCollection [
	self setParents: self rights to: nil.
	rights := anOrderedCollection.
	self setParents: self rights to: self
]

{ #category : #generated }
CPPNoexceptExpressionNode >> tokenVariables [
	^ #(#noexceptToken)
]
