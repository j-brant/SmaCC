Class {
	#name : #CSSParenthesizedExpressionNode,
	#superclass : #CSSProgramNode,
	#instVars : [
		'leftParen',
		'items',
		'rightParen'
	],
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSParenthesizedExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitParenthesizedExpression: self
]

{ #category : #generated }
CSSParenthesizedExpressionNode >> compositeNodeVariables [
	^ #(#items)
]

{ #category : #'generated-initialize-release' }
CSSParenthesizedExpressionNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
]

{ #category : #generated }
CSSParenthesizedExpressionNode >> items [
	^ items
]

{ #category : #generated }
CSSParenthesizedExpressionNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : #generated }
CSSParenthesizedExpressionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CSSParenthesizedExpressionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CSSParenthesizedExpressionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSSParenthesizedExpressionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSSParenthesizedExpressionNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
