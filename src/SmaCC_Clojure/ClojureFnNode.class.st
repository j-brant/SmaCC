Class {
	#name : #ClojureFnNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'leftParen',
		'expressions',
		'rightParen'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureFnNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitFn: self
]

{ #category : #generated }
ClojureFnNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
ClojureFnNode >> expressions [
	^ expressions
]

{ #category : #generated }
ClojureFnNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
ClojureFnNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
]

{ #category : #generated }
ClojureFnNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
ClojureFnNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
ClojureFnNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
ClojureFnNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
ClojureFnNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
