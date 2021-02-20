Class {
	#name : #ClojureSetNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'leftBrace',
		'expressions',
		'rightBrace'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureSetNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitSet: self
]

{ #category : #generated }
ClojureSetNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
ClojureSetNode >> expressions [
	^ expressions
]

{ #category : #generated }
ClojureSetNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
ClojureSetNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
]

{ #category : #generated }
ClojureSetNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
ClojureSetNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
ClojureSetNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
ClojureSetNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
ClojureSetNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
