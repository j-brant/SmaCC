Class {
	#name : #CSCollectionExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'leftBracket',
		'rightBracket',
		'values',
		'commaTokens'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSCollectionExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCollectionExpression: self
]

{ #category : #generated }
CSCollectionExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSCollectionExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSCollectionExpressionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
CSCollectionExpressionNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens #_leftParens #_rightParens)
]

{ #category : #'generated-initialize-release' }
CSCollectionExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSCollectionExpressionNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
CSCollectionExpressionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
CSCollectionExpressionNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
CSCollectionExpressionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
CSCollectionExpressionNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : #generated }
CSCollectionExpressionNode >> values [
	^ values
]

{ #category : #generated }
CSCollectionExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
