Class {
	#name : #ClojureMapNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'leftBrace',
		'pairs',
		'rightBrace'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureMapNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitMap: self
]

{ #category : #generated }
ClojureMapNode >> compositeNodeVariables [
	^ #(#pairs)
]

{ #category : #'generated-initialize-release' }
ClojureMapNode >> initialize [
	super initialize.
	pairs := OrderedCollection new: 2.
]

{ #category : #generated }
ClojureMapNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
ClojureMapNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
ClojureMapNode >> pairs [
	^ pairs
]

{ #category : #generated }
ClojureMapNode >> pairs: anOrderedCollection [
	self setParents: self pairs to: nil.
	pairs := anOrderedCollection.
	self setParents: self pairs to: self
]

{ #category : #generated }
ClojureMapNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
ClojureMapNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
ClojureMapNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
