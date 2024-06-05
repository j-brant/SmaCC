Class {
	#name : #PyBacktickExpressionNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'backtickTokens',
		'expressions',
		'commaTokens'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyBacktickExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitBacktickExpression: self
]

{ #category : #generated }
PyBacktickExpressionNode >> backtickTokens [
	^ backtickTokens
]

{ #category : #generated }
PyBacktickExpressionNode >> backtickTokens: anOrderedCollection [
	backtickTokens := anOrderedCollection
]

{ #category : #generated }
PyBacktickExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyBacktickExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyBacktickExpressionNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
PyBacktickExpressionNode >> compositeTokenVariables [
	^ #(#backtickTokens #commaTokens)
]

{ #category : #generated }
PyBacktickExpressionNode >> expressions [
	^ expressions
]

{ #category : #generated }
PyBacktickExpressionNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
PyBacktickExpressionNode >> initialize [
	super initialize.
	backtickTokens := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]
