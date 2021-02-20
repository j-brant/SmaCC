Class {
	#name : #ClojureSymbolNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureSymbolNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitSymbol: self
]

{ #category : #generated }
ClojureSymbolNode >> name [
	^ name
]

{ #category : #generated }
ClojureSymbolNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
ClojureSymbolNode >> tokenVariables [
	^ #(#name)
]
