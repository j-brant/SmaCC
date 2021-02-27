Class {
	#name : #ClojureUnquoteNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'unquote',
		'value'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureUnquoteNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitUnquote: self
]

{ #category : #testing }
ClojureUnquoteNode >> isQuoted [
	^ self isSyntaxQuoted not
]

{ #category : #generated }
ClojureUnquoteNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
ClojureUnquoteNode >> tokenVariables [
	^ #(#unquote)
]

{ #category : #generated }
ClojureUnquoteNode >> unquote [
	^ unquote
]

{ #category : #generated }
ClojureUnquoteNode >> unquote: aSmaCCToken [
	unquote := aSmaCCToken
]

{ #category : #generated }
ClojureUnquoteNode >> value [
	^ value
]

{ #category : #generated }
ClojureUnquoteNode >> value: aClojureExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aClojureExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
