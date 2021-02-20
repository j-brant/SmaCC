Class {
	#name : #ClojureQuoteNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'quote',
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureQuoteNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitQuote: self
]

{ #category : #generated }
ClojureQuoteNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
ClojureQuoteNode >> quote [
	^ quote
]

{ #category : #generated }
ClojureQuoteNode >> quote: aSmaCCToken [
	quote := aSmaCCToken
]

{ #category : #generated }
ClojureQuoteNode >> tokenVariables [
	^ #(#quote)
]

{ #category : #generated }
ClojureQuoteNode >> value [
	^ value
]

{ #category : #generated }
ClojureQuoteNode >> value: aClojureExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aClojureExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
