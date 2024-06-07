Class {
	#name : #PyYieldExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'yieldToken',
		'expressions',
		'commaTokens',
		'fromToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyYieldExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitYieldExpression: self
]

{ #category : #generated }
PyYieldExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyYieldExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyYieldExpressionNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
PyYieldExpressionNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyYieldExpressionNode >> expressions [
	^ expressions
]

{ #category : #generated }
PyYieldExpressionNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #generated }
PyYieldExpressionNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
PyYieldExpressionNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyYieldExpressionNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyYieldExpressionNode >> tokenVariables [
	^ #(#yieldToken #fromToken)
]

{ #category : #generated }
PyYieldExpressionNode >> yieldToken [
	^ yieldToken
]

{ #category : #generated }
PyYieldExpressionNode >> yieldToken: aSmaCCToken [
	yieldToken := aSmaCCToken
]
