Class {
	#name : #CSTupleExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'leftParen',
		'elements',
		'commaTokens',
		'rightParen'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSTupleExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTupleExpression: self
]

{ #category : #generated }
CSTupleExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSTupleExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSTupleExpressionNode >> compositeNodeVariables [
	^ #(#elements)
]

{ #category : #generated }
CSTupleExpressionNode >> elements [
	^ elements
]

{ #category : #generated }
CSTupleExpressionNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #generated }
CSTupleExpressionNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens #_leftParens #_rightParens)
]

{ #category : #'generated-initialize-release' }
CSTupleExpressionNode >> initialize [
	super initialize.
	elements := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSTupleExpressionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CSTupleExpressionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CSTupleExpressionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSTupleExpressionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSTupleExpressionNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
