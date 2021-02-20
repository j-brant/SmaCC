Class {
	#name : #ClojureVectorNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'leftBracket',
		'expressions',
		'rightBracket'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureVectorNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitVector: self
]

{ #category : #generated }
ClojureVectorNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
ClojureVectorNode >> expressions [
	^ expressions
]

{ #category : #generated }
ClojureVectorNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
ClojureVectorNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
]

{ #category : #generated }
ClojureVectorNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
ClojureVectorNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
ClojureVectorNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
ClojureVectorNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
ClojureVectorNode >> tokenVariables [
	^ #(#leftBracket #rightBracket)
]
