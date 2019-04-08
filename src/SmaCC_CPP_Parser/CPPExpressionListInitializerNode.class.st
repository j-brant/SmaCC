Class {
	#name : #CPPExpressionListInitializerNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'leftParen',
		'values',
		'ellipsises',
		'commas',
		'rightParen'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPExpressionListInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpressionListInitializer: self
]

{ #category : #generated }
CPPExpressionListInitializerNode >> commas [
	^ commas
]

{ #category : #generated }
CPPExpressionListInitializerNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPExpressionListInitializerNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
CPPExpressionListInitializerNode >> compositeTokenVariables [
	^ #(#ellipsises #commas)
]

{ #category : #generated }
CPPExpressionListInitializerNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPExpressionListInitializerNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CPPExpressionListInitializerNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPExpressionListInitializerNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPExpressionListInitializerNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPExpressionListInitializerNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPExpressionListInitializerNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPExpressionListInitializerNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]

{ #category : #generated }
CPPExpressionListInitializerNode >> values [
	^ values
]

{ #category : #generated }
CPPExpressionListInitializerNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
