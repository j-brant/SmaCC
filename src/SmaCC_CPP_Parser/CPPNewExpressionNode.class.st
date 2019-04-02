Class {
	#name : #CPPNewExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'newToken',
		'type',
		'initializer',
		'values',
		'ellipsises',
		'commas',
		'colonColon'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPNewExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNewExpression: self
]

{ #category : #generated }
CPPNewExpressionNode >> colonColon [
	^ colonColon
]

{ #category : #generated }
CPPNewExpressionNode >> colonColon: aSmaCCToken [
	colonColon := aSmaCCToken
]

{ #category : #generated }
CPPNewExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
CPPNewExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPNewExpressionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
CPPNewExpressionNode >> compositeTokenVariables [
	^ #(#ellipsises #commas #leftParens #rightParens)
]

{ #category : #generated }
CPPNewExpressionNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPNewExpressionNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CPPNewExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPNewExpressionNode >> initializer [
	^ initializer
]

{ #category : #generated }
CPPNewExpressionNode >> initializer: aCPPProgramNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aCPPProgramNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
CPPNewExpressionNode >> newToken [
	^ newToken
]

{ #category : #generated }
CPPNewExpressionNode >> newToken: aSmaCCToken [
	newToken := aSmaCCToken
]

{ #category : #generated }
CPPNewExpressionNode >> nodeVariables [
	^ #(#initializer)
]

{ #category : #generated }
CPPNewExpressionNode >> otherVariables [
	^ #(#type)
]

{ #category : #generated }
CPPNewExpressionNode >> tokenVariables [
	^ #(#newToken #colonColon)
]

{ #category : #generated }
CPPNewExpressionNode >> type [
	^ type
]

{ #category : #generated }
CPPNewExpressionNode >> type: anObject [
	type := anObject
]

{ #category : #generated }
CPPNewExpressionNode >> values [
	^ values
]

{ #category : #generated }
CPPNewExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
