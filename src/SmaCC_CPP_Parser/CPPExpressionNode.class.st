Class {
	#name : #CPPExpressionNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'leftParens',
		'rightParens'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpression: self
]

{ #category : #generated }
CPPExpressionNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
CPPExpressionNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
CPPExpressionNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CPPExpressionNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CPPExpressionNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CPPExpressionNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]
