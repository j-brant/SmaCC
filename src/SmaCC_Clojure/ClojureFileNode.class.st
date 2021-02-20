Class {
	#name : #ClojureFileNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'expressions'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureFileNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitFile: self
]

{ #category : #generated }
ClojureFileNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : #generated }
ClojureFileNode >> expressions [
	^ expressions
]

{ #category : #generated }
ClojureFileNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #'generated-initialize-release' }
ClojureFileNode >> initialize [
	super initialize.
	expressions := OrderedCollection new: 2.
]
