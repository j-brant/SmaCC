Class {
	#name : #ClojureListNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'leftParen',
		'expressions',
		'rightParen'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureListNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitList: self
]

{ #category : #generated }
ClojureListNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
ClojureListNode >> expressions [
	^ expressions
]

{ #category : #generated }
ClojureListNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
ClojureListNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
]

{ #category : #generated }
ClojureListNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
ClojureListNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
ClojureListNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
ClojureListNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
ClojureListNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
