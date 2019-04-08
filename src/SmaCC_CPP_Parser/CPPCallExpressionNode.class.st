Class {
	#name : #CPPCallExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'expression',
		'values',
		'ellipsises',
		'commas'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPCallExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallExpression: self
]

{ #category : #generated }
CPPCallExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
CPPCallExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPCallExpressionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
CPPCallExpressionNode >> compositeTokenVariables [
	^ #(#ellipsises #commas #leftParens #rightParens)
]

{ #category : #generated }
CPPCallExpressionNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPCallExpressionNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPCallExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CPPCallExpressionNode >> expression: aCPPProgramNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPProgramNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPCallExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPCallExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CPPCallExpressionNode >> values [
	^ values
]

{ #category : #generated }
CPPCallExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
