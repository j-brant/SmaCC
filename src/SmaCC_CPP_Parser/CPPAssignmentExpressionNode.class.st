Class {
	#name : #CPPAssignmentExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'lhs',
		'operator',
		'leftBrace',
		'values',
		'ellipsises',
		'commas',
		'rightBrace'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPAssignmentExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssignmentExpression: self
]

{ #category : #generated }
CPPAssignmentExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
CPPAssignmentExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPAssignmentExpressionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
CPPAssignmentExpressionNode >> compositeTokenVariables [
	^ #(#ellipsises #commas #leftParens #rightParens)
]

{ #category : #generated }
CPPAssignmentExpressionNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPAssignmentExpressionNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CPPAssignmentExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPAssignmentExpressionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CPPAssignmentExpressionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CPPAssignmentExpressionNode >> lhs [
	^ lhs
]

{ #category : #generated }
CPPAssignmentExpressionNode >> lhs: aCPPExpressionNode [
	self lhs notNil
		ifTrue: [ self lhs parent: nil ].
	lhs := aCPPExpressionNode.
	self lhs notNil
		ifTrue: [ self lhs parent: self ]
]

{ #category : #generated }
CPPAssignmentExpressionNode >> nodeVariables [
	^ #(#lhs)
]

{ #category : #generated }
CPPAssignmentExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
CPPAssignmentExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CPPAssignmentExpressionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CPPAssignmentExpressionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CPPAssignmentExpressionNode >> tokenVariables [
	^ #(#operator #leftBrace #rightBrace)
]

{ #category : #generated }
CPPAssignmentExpressionNode >> values [
	^ values
]

{ #category : #generated }
CPPAssignmentExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
