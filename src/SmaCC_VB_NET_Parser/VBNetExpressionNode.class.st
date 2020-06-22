Class {
	#name : #VBNetExpressionNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'leftParens',
		'rightParens'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpression: self
]

{ #category : #generated }
VBNetExpressionNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
VBNetExpressionNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetExpressionNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
VBNetExpressionNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
VBNetExpressionNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
VBNetExpressionNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]
