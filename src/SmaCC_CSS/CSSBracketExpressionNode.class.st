Class {
	#name : #CSSBracketExpressionNode,
	#superclass : #CSSProgramNode,
	#instVars : [
		'leftBracket',
		'items',
		'rightBracket'
	],
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSBracketExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBracketExpression: self
]

{ #category : #generated }
CSSBracketExpressionNode >> compositeNodeVariables [
	^ #(#items)
]

{ #category : #'generated-initialize-release' }
CSSBracketExpressionNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
]

{ #category : #generated }
CSSBracketExpressionNode >> items [
	^ items
]

{ #category : #generated }
CSSBracketExpressionNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : #generated }
CSSBracketExpressionNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
CSSBracketExpressionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
CSSBracketExpressionNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
CSSBracketExpressionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
CSSBracketExpressionNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]
